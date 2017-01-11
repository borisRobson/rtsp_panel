#include "tcp_listener.h"

tcp_listener::tcp_listener()
{
}

void tcp_listener::run()
{
    qDebug() << "Tcp Thread: " << this->thread();

    tcpProcess = new QProcess();
    QObject::connect(tcpProcess, SIGNAL(readyReadStandardOutput()), this,SLOT(read()));
    tcpProcess->setReadChannel(QProcess::StandardOutput);
    tcpProcess->setProcessChannelMode(QProcess::ForwardedChannels);
    data = new char[1024];

#ifdef IMX6
    tcpProcess->start("node ./tcpComms/bin/multicore");
#else
    tcpProcess->start("node ./tcpComms/bin/multicore");
#endif

    if(!tcpProcess->waitForStarted())
        return;

    exec();
}

void tcp_listener::read()
{
    tcpProcess->read(data, 1024);
    qDebug() << data;
    memset(data,0,sizeof(data));
}
