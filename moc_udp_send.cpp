/****************************************************************************
** Meta object code from reading C++ file 'udp_send.h'
**
** Created: Wed Jan 11 09:36:53 2017
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "udp_send.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'udp_send.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_udp_send[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      23,   10,    9,    9, 0x0a,
      65,   62,   51,    9, 0x0a,
      99,    9,   91,    9, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_udp_send[] = {
    "udp_send\0\0ID,addr,port\0"
    "send_udp(QString,char*,int)\0QByteArray\0"
    "ID\0create_probe_res(QString)\0QString\0"
    "create_uuid()\0"
};

const QMetaObject udp_send::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_udp_send,
      qt_meta_data_udp_send, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &udp_send::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *udp_send::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *udp_send::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_udp_send))
        return static_cast<void*>(const_cast< udp_send*>(this));
    return QObject::qt_metacast(_clname);
}

int udp_send::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: send_udp((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< char*(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 1: { QByteArray _r = create_probe_res((*reinterpret_cast< QString(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< QByteArray*>(_a[0]) = _r; }  break;
        case 2: { QString _r = create_uuid();
            if (_a[0]) *reinterpret_cast< QString*>(_a[0]) = _r; }  break;
        default: ;
        }
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
