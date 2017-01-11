#include "rtsp_controller.h"
#include "rtsp_server.h"
#include "gst/gst.h"

rtsp_server *rtspServer;

rtsp_controller::rtsp_controller(QObject *parent) :
    QObject(parent)
{
    qDebug() << __FUNCTION__ <<" : " << this->thread();
    rtspServer = new rtsp_server();
}

void rtsp_controller::start()
{
    QThread *rtspThread = new QThread();
    rtspServer->moveToThread(rtspThread);
    rtspServer->start(QThread::HighestPriority);
}
