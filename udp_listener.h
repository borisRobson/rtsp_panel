#ifndef UDP_LISTENER_H
#define UDP_LISTENER_H

#include <QThread>
#include <QObject>
#include <QDebug>

#include <stdlib.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <time.h>
#include <string.h>
#include <stdio.h>
#include <poll.h>

#include <iostream>
#include <string>

class udp_listener : public QThread
{
    Q_OBJECT
public:
    udp_listener();
    void run();

signals:
    void dataRecieved(QByteArray msg, char* src_addr, int port);

private:
    int fd;
    struct sockaddr_in addr;

};

#endif // UDP_LISTENER_H
