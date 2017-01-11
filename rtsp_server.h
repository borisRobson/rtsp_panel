#ifndef RTSP_SERVER_H
#define RTSP_SERVER_H

#include <QThread>
#include <QDebug>
#include <QObject>

#include <QTimer>


#include <QtCore>
#include <gst/gst.h>
#include <gst/rtsp-server/rtsp-server.h>

class rtsp_server : public QThread
{
    Q_OBJECT
public:
    rtsp_server();
    void run();
};

#endif // RTSP_SERVER_H
