#include "rtsp_server.h"
GMainLoop *loop;
GstRTSPServer *server;

GstRTSPMediaMapping *mapping;
GstRTSPMediaFactory *factory;
GMainContext *context;
gchar* service;
/*define to enable user/admin pw*/
#define WITH_AUTH true
//#undef WITH_AUTH


rtsp_server::rtsp_server()
{

#ifdef WITH_AUTH

#endif
    loop = g_main_loop_new(context, false);

    //create server instance
    server = gst_rtsp_server_new();


    service = new gchar[3];
    service  = g_strdup_printf("%i",554);


    /*get the mapping for this server, every server has a default mapper object
      *that can be used to map uri mount points to media factories*/
    mapping = gst_rtsp_server_get_media_mapping(server);
}

static gboolean timeout(GstRTSPServer * server, gboolean ignored)
{
    Q_UNUSED(ignored);

    GstRTSPSessionPool *pool;

    pool = gst_rtsp_server_get_session_pool(server);
    gst_rtsp_session_pool_cleanup(pool);
    g_object_unref(pool);

    return true;
}

void rtsp_server::run()
{
    qDebug() << "RtspServer Thread: " << this->thread();


    factory = gst_rtsp_media_factory_new();

#ifdef WITH_AUTH
    /* make a new authentication manager. it can be added to control access to all
      * the factories on the server or on individual factroies*/

    GstRTSPAuth *auth;
    gchar *basic;

    auth = gst_rtsp_auth_new();
    basic = gst_rtsp_auth_make_basic("user", "admin");
    gst_rtsp_auth_set_basic(auth, basic);
    g_free(basic);


    gst_rtsp_media_factory_set_auth (factory, auth);
    //g_object_unref (auth);

#endif

#ifdef IMX6
    gst_rtsp_media_factory_set_launch(factory, "("
                                      "mfw_v4lsrc capture-mode=0 ! video/x-raw-yuv,width=640,height=480,framerate=15/1 ! "
                                      "ffmpegcolorspace ! vpuenc codec=6  ! rtph264pay name=pay0 pt=96 " ")");
#else

    gst_rtsp_media_factory_set_launch(factory, "("
                                      "v4l2src ! video/x-raw-yuv,width=640,height=480,framerate=15/1 ! "
                                      "ffmpegcolorspace ! x264enc ! rtph264pay name=pay0 pt=96 " ")");
#endif


    gst_rtsp_media_factory_set_shared(factory, true);
    gst_rtsp_server_set_service(server, service);

    //attach the test factory to the /test url
    gst_rtsp_media_mapping_add_factory(mapping, "/test", factory);

    //g_object_unref(mapping);

    //attach the server to the default maincontext
    guint id = gst_rtsp_server_attach(server, context);
    if(id == 0){
        qDebug() << "failed to attach server";
        exit(-1);
    }
    else{
        qDebug() << "Server attched successfully";
        qDebug() << "context ID: " << id;
    }

    //add timeout for cleanup
    g_timeout_add_seconds(2, (GSourceFunc)timeout, server);

    //start serving    
    g_main_loop_run(loop);

}
