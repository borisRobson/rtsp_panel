#include <QtCore/QCoreApplication>

#include "rtsp_controller.h"
#include "udp_controller.h"
#include "tcp_controller.h"
#include "xml_handler.h"

#include "gst/gst.h"

rtsp_controller *rtspController;
udp_controller *udpController;
tcp_controller *tcpController;
xml_handler *xmlHandler;

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    qDebug() << "Main Thread: " << a.thread();

    if(!gst_is_initialized())
        gst_init(NULL, NULL);

    rtspController = new rtsp_controller();
    udpController = new udp_controller();
    tcpController = new tcp_controller();
    xmlHandler = new xml_handler();

    QObject::connect(udpController, SIGNAL(probe_received()), xmlHandler, SLOT(create_getSysDTRes()));


    rtspController->start();
    udpController->start();
    tcpController->start();

    return a.exec();
}
