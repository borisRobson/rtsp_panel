#include "udp_controller.h"
#include "udp_listener.h"
#include "udp_send.h"

udp_listener *listener;
udp_send *udpSend;

udp_controller::udp_controller(QObject *parent) :
    QObject(parent)
{
    qDebug() << __FUNCTION__ <<" : " << this->thread();
    listener = new udp_listener();
    udpSend = new udp_send();
    connect(listener, SIGNAL(dataRecieved(QByteArray,char*,int)), this, SLOT(parse_msg(QByteArray,char*,int)));
    connect(this,SIGNAL(send_udp(QString,char*,int)), udpSend, SLOT(send_udp(QString,char*,int)));
}

void udp_controller::start()
{
    QThread *udpThread = new QThread();
    listener->moveToThread(udpThread);
    listener->start(QThread::LowPriority);
}

void udp_controller::parse_msg(QByteArray msg, char* src_addr, int src_port)
{
    QString msg_uid;
    bool isNVT = false;

    //convert byte array to dom doc
    QDomDocument doc;
    doc.setContent(msg);

    //get the root element
    QDomNode root = doc.firstChildElement();

    QDomNodeList children = root.childNodes();
    for(int i = 0; i < children.count(); i++)
    {
        QDomElement ele = children.at(i).toElement();

        if(ele.nodeName().contains("Header", Qt::CaseInsensitive)){
            msg_uid = parseHeader(ele);
        }
        else if(ele.nodeName().contains("Body", Qt::CaseInsensitive)){
            isNVT = parseBody(ele);
        }
        else{
            qDebug() << "Unknown";
        }
        if(isNVT && msg_uid.length()!=0){
            emit send_udp(msg_uid, src_addr, src_port);
            emit probe_received();
        }
    }
}

QString udp_controller::parseHeader(QDomElement hdr)
{
    QString ID;
    QDomNodeList list = hdr.childNodes();
    for(int i = 0; i < list.count(); i++)
    {
        QDomElement ele = list.at(i).toElement();
        if(ele.nodeName().contains("MessageID", Qt::CaseInsensitive)){
            QString HdrSrcID;
            QTextStream(&HdrSrcID) << ele.text();
            ID = HdrSrcID;
        }
    }
    return ID;
}

bool udp_controller::parseBody(QDomElement bdy)
{
    QDomNodeList list = bdy.childNodes();
    for(int i = 0; i < list.count(); i++)
    {
        QDomElement ele = list.at(i).toElement();
        if(ele.nodeName().contains("Probe", Qt::CaseInsensitive)){
            QString BdyType;
            QTextStream(&BdyType) << ele.text();
            if(BdyType.contains("NetworkVideoTransmitter", Qt::CaseInsensitive)){
                return true;
            }
        }
    }
    return false;
}
