/****************************************************************************
** Meta object code from reading C++ file 'udp_listener.h'
**
** Created: Wed Jan 11 09:36:53 2017
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "udp_listener.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'udp_listener.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_udp_listener[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      32,   14,   13,   13, 0x05,

       0        // eod
};

static const char qt_meta_stringdata_udp_listener[] = {
    "udp_listener\0\0msg,src_addr,port\0"
    "dataRecieved(QByteArray,char*,int)\0"
};

const QMetaObject udp_listener::staticMetaObject = {
    { &QThread::staticMetaObject, qt_meta_stringdata_udp_listener,
      qt_meta_data_udp_listener, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &udp_listener::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *udp_listener::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *udp_listener::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_udp_listener))
        return static_cast<void*>(const_cast< udp_listener*>(this));
    return QThread::qt_metacast(_clname);
}

int udp_listener::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: dataRecieved((*reinterpret_cast< QByteArray(*)>(_a[1])),(*reinterpret_cast< char*(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        default: ;
        }
        _id -= 1;
    }
    return _id;
}

// SIGNAL 0
void udp_listener::dataRecieved(QByteArray _t1, char * _t2, int _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
