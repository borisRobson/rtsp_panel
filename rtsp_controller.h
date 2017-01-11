#ifndef RTSP_CONTROLLER_H
#define RTSP_CONTROLLER_H

#include <QObject>
#include <QDebug>


class rtsp_controller : public QObject
{
    Q_OBJECT
public:
    explicit rtsp_controller(QObject *parent = 0);
    void start();

signals:

public slots:

};

#endif // RTSP_CONTROLLER_H
