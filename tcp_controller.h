#ifndef TCP_CONTROLLER_H
#define TCP_CONTROLLER_H

#include <QThread>
#include <QObject>
#include <QProcess>

class tcp_controller : public QObject
{
    Q_OBJECT
public:
    explicit tcp_controller(QObject *parent = 0);
    void start();

signals:

public slots:
    void quit();


};

#endif // TCP_CONTROLLER_H
