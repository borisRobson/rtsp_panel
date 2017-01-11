#ifndef TCP_LISTENER_H
#define TCP_LISTENER_H

#include <QThread>
#include <QProcess>
#include <QDebug>

class tcp_listener : public QThread
{    Q_OBJECT
 public:
     tcp_listener();
     void run();
 private:
     QProcess *tcpProcess;
      char* data;
 private slots:
      void read();
};

#endif // TCP_LISTENER_H
