#include "udp_listener.h"


using namespace std;

#define PROBE_PORT 3702
#define PROBE_GROUP "239.255.255.250"
#define PROBE_MSG_SIZE 1024

udp_listener::udp_listener()
{
    string group(PROBE_GROUP);
    int port(PROBE_PORT);

    //create ipv4 socket - datagram type - auto decide protocol
    //fd > 0 = success
    if ((fd = socket(AF_INET, SOCK_DGRAM, 0)) < 0)
    {
        perror("socket");
        exit(1);
    }

    //configure socket
    u_int yes = 1;
    if(setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes)) > 0)
    {
        perror("Reusing ADDR failed");
        exit(1);
    }

    //set socket port & addr
    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_port = htons(port);
    addr.sin_addr.s_addr = htonl(INADDR_ANY);

    //bind socket
    if(bind(fd, (struct sockaddr *)&addr, sizeof(addr)) < 0)
    {
        perror("bind");
        exit(1);
    }

    //set multicast options
    struct ip_mreq mreq;
    mreq.imr_multiaddr.s_addr = inet_addr(group.c_str());
    mreq.imr_interface.s_addr = htonl(INADDR_ANY);

    //add to multicast group
    if(setsockopt(fd, IPPROTO_IP, IP_ADD_MEMBERSHIP, &mreq, sizeof(mreq)) < 0)
    {
        perror("setsockopt");
        exit(1);
    }

    qDebug() << "Joined multicast group: " << PROBE_GROUP << ": " << port;
}

void udp_listener::run()
{
    qDebug() << "UdpListen Thread: " << this->thread();
    socklen_t addrlen;
    int nbytes;
    char msgbuf[PROBE_MSG_SIZE];
    addrlen = sizeof(addr);

    struct pollfd ufds;
    int rv;

    ufds.events = POLLIN;
    ufds.fd = fd;
    while(true)
    {
        rv = poll(&ufds,1, 25);

        if(rv == -1){
            perror("poll");
        }
        else if(rv == 0){
            //qDebug() << "no data after timeout";
        }
        else{
            if(ufds.revents & POLLIN){
                nbytes = recvfrom(fd, msgbuf, PROBE_MSG_SIZE, 0, (struct sockaddr*)&addr,&addrlen);

                char* src_addr;
                int src_port;

                src_addr = inet_ntoa(addr.sin_addr);
                src_port = ntohs(addr.sin_port);

                QByteArray msg;
                msg = QByteArray((char*)msgbuf);
                emit dataRecieved(msg, src_addr, src_port);                

                memset(&msgbuf, 0, PROBE_MSG_SIZE);
                msg.clear();
            }
        }
    }
    exec();
}
