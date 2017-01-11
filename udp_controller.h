#ifndef UDP_CONTROLLER_H
#define UDP_CONTROLLER_H

#include <QObject>
#include <QObject>
#include <string>
#include <QtXml>
#include <QDebug>

class udp_controller : public QObject
{
    Q_OBJECT
public:
    explicit udp_controller(QObject *parent = 0);
    void start();
    void parse(QByteArray msg, char* src_addr, int src_port);
    QString parseHeader(QDomElement hdr);
    bool parseBody(QDomElement bdy);

signals:
    void send_udp(QString , char* , int );
    void probe_received();

public slots:
    void parse_msg(QByteArray msg, char* src_addr, int port);

};

#endif // UDP_CONTROLLER_H
