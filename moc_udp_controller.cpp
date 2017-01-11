/****************************************************************************
** Meta object code from reading C++ file 'udp_controller.h'
**
** Created: Wed Jan 11 09:36:52 2017
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "udp_controller.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'udp_controller.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_udp_controller[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       2,       // signalCount

 // signals: signature, parameters, type, tag, flags
      19,   16,   15,   15, 0x05,
      47,   15,   15,   15, 0x05,

 // slots: signature, parameters, type, tag, flags
      82,   64,   15,   15, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_udp_controller[] = {
    "udp_controller\0\0,,\0send_udp(QString,char*,int)\0"
    "probe_received()\0msg,src_addr,port\0"
    "parse_msg(QByteArray,char*,int)\0"
};

const QMetaObject udp_controller::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_udp_controller,
      qt_meta_data_udp_controller, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &udp_controller::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *udp_controller::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *udp_controller::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_udp_controller))
        return static_cast<void*>(const_cast< udp_controller*>(this));
    return QObject::qt_metacast(_clname);
}

int udp_controller::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: send_udp((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< char*(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 1: probe_received(); break;
        case 2: parse_msg((*reinterpret_cast< QByteArray(*)>(_a[1])),(*reinterpret_cast< char*(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        default: ;
        }
        _id -= 3;
    }
    return _id;
}

// SIGNAL 0
void udp_controller::send_udp(QString _t1, char * _t2, int _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void udp_controller::probe_received()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}
QT_END_MOC_NAMESPACE
