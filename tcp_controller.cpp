#include "tcp_controller.h"
#include "tcp_listener.h"

tcp_listener *tcplistener;

tcp_controller::tcp_controller(QObject *parent) :
    QObject(parent)
{
    qDebug() << __FUNCTION__ <<" : " << this->thread();
    tcplistener = new tcp_listener();
}

void tcp_controller::start()
{
    QThread *tcpThread = new QThread();
    tcplistener->moveToThread(tcpThread);
    tcplistener->start(QThread::LowPriority);
}

void tcp_controller::quit()
{
}
