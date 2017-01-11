#-------------------------------------------------
#
# Project created by QtCreator 2016-12-08T13:03:35
#
#-------------------------------------------------

QT       += core network xml

QT       -= gui

TARGET = mthread-onvif-rtsp
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app
PROJECT_BASE_DIRECTORY = /home/standby/doorentry
linux-mxc-g++ {

    # extract the boardtype from the toolchain.make file replaced the need for the project to have this.
    BOARDTYPE=$$system("grep '^BUILD_PROFILE' $$PROJECT_BASE_DIRECTORY/toolchain.make | awk -F'=' '{print $2}'")
    DEFINES += $$BOARDTYPE
    message("Arm Build: $$BOARDTYPE")

    # Allow application source code to conditionally compile for target or development host PC
    DEFINES += $$BOARDTYPE

    contains ( DEFINES, IMX6 ) {
        # add cflag
        QMAKE_CXXFLAGS+=-Wno-psabi
    }

    MYPREFIX = $$PROJECT_BASE_DIRECTORY/ltib/rootfs

    INCLUDEPATH += $$MYPREFIX/usr/include/gstreamer-0.10 $$MYPREFIX/usr/include/glib-2.0 $$MYPREFIX/usr/lib/glib-2.0/include $$MYPREFIX/usr/include/libxml2
    LIBS +=  -L$$MYPREFIX/usr/lib -lgstreamer-0.10 -lgstrtp-0.10 -lgstsdp-0.10 -lgstrtsp-0.10 -lgstrtspserver-0.10 -lgstapp-0.10 -lgstbase-0.10 -lglib-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lz -lxml2
    LIBS += -L$$MYPREFIX/usr/lib -lts -lasound -lpng -lfreetype
    INCLUDEPATH += $$MYPREFIX/usr/include
}

linux-g++-|linux-g++-64 {
    DEFINES += PCBUILD
    message("x86 Build")


    DEFINES += PCBUILD
    message("x86 Build")


    INCLUDEPATH += /usr/include/gstreamer-0.10 /usr/include/glib-2.0 /usr/lib/glib-2.0/include /usr/include/libxml2 /usr/lib/x86_64-linux-gnu/glib-2.0/include
    LIBS +=  -L/usr/lib -lgstreamer-0.10 -lgstrtsp-0.10 -lgstrtspserver-0.10 -lgstapp-0.10 -lgstbase-0.10 -lglib-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lz -lxml2

    INCLUDEPATH += /usr/local/include
}



SOURCES += main.cpp \
    rtsp_controller.cpp \
    rtsp_server.cpp \
    udp_controller.cpp \
    udp_listener.cpp \
    udp_send.cpp \
    tcp_controller.cpp \
    tcp_listener.cpp \
    xml_handler.cpp \
    xml_creator.cpp

HEADERS += \
    rtsp_controller.h \
    rtsp_server.h \
    udp_controller.h \
    udp_listener.h \
    udp_send.h \
    tcp_controller.h \
    tcp_listener.h \
    xml_handler.h \
    xml_creator.h
