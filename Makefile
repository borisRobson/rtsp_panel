#############################################################################
# Makefile for building: mthread-onvif-rtsp
# Generated by qmake (2.01a) (Qt 4.7.2) on: Wed Jan 11 09:36:42 2017
# Project:  mthread-onvif-rtsp.pro
# Template: app
# Command: /usr/local/QtEmbedded-4.7.2-arm/bin/qmake -spec /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ CONFIG+=debug -o Makefile mthread-onvif-rtsp.pro
#############################################################################

####### Compiler, tools and options

CC            = arm-none-linux-gnueabi-gcc
CXX           = arm-none-linux-gnueabi-g++
DEFINES       = -DIMX6 -DIMX6 -DQT_XML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -Wno-psabi -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ -I. -I/usr/local/QtEmbedded-4.7.2-arm/include/QtCore -I/usr/local/QtEmbedded-4.7.2-arm/include/QtNetwork -I/usr/local/QtEmbedded-4.7.2-arm/include/QtXml -I/usr/local/QtEmbedded-4.7.2-arm/include -I../../../ltib/rootfs/usr/include/gstreamer-0.10 -I../../../ltib/rootfs/usr/include/glib-2.0 -I../../../ltib/rootfs/usr/lib/glib-2.0/include -I../../../ltib/rootfs/usr/include/libxml2 -I../../../ltib/rootfs/usr/include -I. -I/usr/local/QtEmbedded-4.7.2-arm/include -I../../../ltib/rootfs/usr/include
LINK          = arm-none-linux-gnueabi-g++
LFLAGS        = -Wl,-rpath,/usr/local/QtEmbedded-4.7.2-arm/lib
LIBS          = $(SUBLIBS)  -L/usr/local/QtEmbedded-4.7.2-arm/lib -L/home/standby/doorentry/ltib/rootfs/usr/lib -L/home/standby/doorentry/ltib/rootfs/usr/lib -lgstreamer-0.10 -lgstrtp-0.10 -lgstsdp-0.10 -lgstrtsp-0.10 -lgstrtspserver-0.10 -lgstapp-0.10 -lgstbase-0.10 -lglib-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lz -lxml2 -lts -lasound -lpng -lfreetype -lQtXml -L/usr/local/QtEmbedded-4.7.2-arm/lib -lQtNetwork -lQtCore -lpthread 
AR            = arm-none-linux-gnueabi-ar cqs
RANLIB        = 
QMAKE         = /usr/local/QtEmbedded-4.7.2-arm/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = arm-none-linux-gnueabi-strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		rtsp_controller.cpp \
		rtsp_server.cpp \
		udp_controller.cpp \
		udp_listener.cpp \
		udp_send.cpp \
		tcp_controller.cpp \
		tcp_listener.cpp \
		xml_handler.cpp \
		xml_creator.cpp moc_rtsp_controller.cpp \
		moc_rtsp_server.cpp \
		moc_udp_controller.cpp \
		moc_udp_listener.cpp \
		moc_udp_send.cpp \
		moc_tcp_controller.cpp \
		moc_tcp_listener.cpp \
		moc_xml_handler.cpp
OBJECTS       = main.o \
		rtsp_controller.o \
		rtsp_server.o \
		udp_controller.o \
		udp_listener.o \
		udp_send.o \
		tcp_controller.o \
		tcp_listener.o \
		xml_handler.o \
		xml_creator.o \
		moc_rtsp_controller.o \
		moc_rtsp_server.o \
		moc_udp_controller.o \
		moc_udp_listener.o \
		moc_udp_send.o \
		moc_tcp_controller.o \
		moc_tcp_listener.o \
		moc_xml_handler.o
DIST          = /usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/g++.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/unix.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/linux.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/qws.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qconfig.pri \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_functions.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_config.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/exclusive_builds.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_pre.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/debug.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_post.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/warn_on.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/unix/thread.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/moc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/resources.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/uic.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/yacc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/lex.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/include_source_dir.prf \
		mthread-onvif-rtsp.pro
QMAKE_TARGET  = mthread-onvif-rtsp
DESTDIR       = 
TARGET        = mthread-onvif-rtsp

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: mthread-onvif-rtsp.pro  /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++/qmake.conf /usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/g++.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/unix.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/linux.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/qws.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qconfig.pri \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_functions.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_config.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/exclusive_builds.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_pre.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/debug.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_post.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/warn_on.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/unix/thread.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/moc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/resources.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/uic.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/yacc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/lex.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/include_source_dir.prf \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtXml.prl \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtCore.prl \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtNetwork.prl
	$(QMAKE) -spec /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ CONFIG+=debug -o Makefile mthread-onvif-rtsp.pro
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/g++.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/unix.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/linux.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/qws.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qconfig.pri:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_functions.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_config.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/exclusive_builds.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_pre.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/debug.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_post.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/warn_on.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/unix/thread.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/moc.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/resources.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/uic.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/yacc.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/lex.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/include_source_dir.prf:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtXml.prl:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtCore.prl:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtNetwork.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ CONFIG+=debug -o Makefile mthread-onvif-rtsp.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/mthread-onvif-rtsp1.0.0 || $(MKDIR) .tmp/mthread-onvif-rtsp1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/mthread-onvif-rtsp1.0.0/ && $(COPY_FILE) --parents rtsp_controller.h rtsp_server.h udp_controller.h udp_listener.h udp_send.h tcp_controller.h tcp_listener.h xml_handler.h xml_creator.h .tmp/mthread-onvif-rtsp1.0.0/ && $(COPY_FILE) --parents main.cpp rtsp_controller.cpp rtsp_server.cpp udp_controller.cpp udp_listener.cpp udp_send.cpp tcp_controller.cpp tcp_listener.cpp xml_handler.cpp xml_creator.cpp .tmp/mthread-onvif-rtsp1.0.0/ && (cd `dirname .tmp/mthread-onvif-rtsp1.0.0` && $(TAR) mthread-onvif-rtsp1.0.0.tar mthread-onvif-rtsp1.0.0 && $(COMPRESS) mthread-onvif-rtsp1.0.0.tar) && $(MOVE) `dirname .tmp/mthread-onvif-rtsp1.0.0`/mthread-onvif-rtsp1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/mthread-onvif-rtsp1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_rtsp_controller.cpp moc_rtsp_server.cpp moc_udp_controller.cpp moc_udp_listener.cpp moc_udp_send.cpp moc_tcp_controller.cpp moc_tcp_listener.cpp moc_xml_handler.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_rtsp_controller.cpp moc_rtsp_server.cpp moc_udp_controller.cpp moc_udp_listener.cpp moc_udp_send.cpp moc_tcp_controller.cpp moc_tcp_listener.cpp moc_xml_handler.cpp
moc_rtsp_controller.cpp: rtsp_controller.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) rtsp_controller.h -o moc_rtsp_controller.cpp

moc_rtsp_server.cpp: rtsp_server.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) rtsp_server.h -o moc_rtsp_server.cpp

moc_udp_controller.cpp: udp_controller.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) udp_controller.h -o moc_udp_controller.cpp

moc_udp_listener.cpp: udp_listener.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) udp_listener.h -o moc_udp_listener.cpp

moc_udp_send.cpp: udp_send.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) udp_send.h -o moc_udp_send.cpp

moc_tcp_controller.cpp: tcp_controller.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) tcp_controller.h -o moc_tcp_controller.cpp

moc_tcp_listener.cpp: tcp_listener.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) tcp_listener.h -o moc_tcp_listener.cpp

moc_xml_handler.cpp: xml_creator.h \
		xml_handler.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) xml_handler.h -o moc_xml_handler.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

main.o: main.cpp rtsp_controller.h \
		udp_controller.h \
		tcp_controller.h \
		xml_handler.h \
		xml_creator.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

rtsp_controller.o: rtsp_controller.cpp rtsp_controller.h \
		rtsp_server.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o rtsp_controller.o rtsp_controller.cpp

rtsp_server.o: rtsp_server.cpp rtsp_server.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o rtsp_server.o rtsp_server.cpp

udp_controller.o: udp_controller.cpp udp_controller.h \
		udp_listener.h \
		udp_send.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o udp_controller.o udp_controller.cpp

udp_listener.o: udp_listener.cpp udp_listener.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o udp_listener.o udp_listener.cpp

udp_send.o: udp_send.cpp udp_send.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o udp_send.o udp_send.cpp

tcp_controller.o: tcp_controller.cpp tcp_controller.h \
		tcp_listener.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tcp_controller.o tcp_controller.cpp

tcp_listener.o: tcp_listener.cpp tcp_listener.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o tcp_listener.o tcp_listener.cpp

xml_handler.o: xml_handler.cpp xml_handler.h \
		xml_creator.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o xml_handler.o xml_handler.cpp

xml_creator.o: xml_creator.cpp xml_creator.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o xml_creator.o xml_creator.cpp

moc_rtsp_controller.o: moc_rtsp_controller.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_rtsp_controller.o moc_rtsp_controller.cpp

moc_rtsp_server.o: moc_rtsp_server.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_rtsp_server.o moc_rtsp_server.cpp

moc_udp_controller.o: moc_udp_controller.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_udp_controller.o moc_udp_controller.cpp

moc_udp_listener.o: moc_udp_listener.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_udp_listener.o moc_udp_listener.cpp

moc_udp_send.o: moc_udp_send.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_udp_send.o moc_udp_send.cpp

moc_tcp_controller.o: moc_tcp_controller.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_tcp_controller.o moc_tcp_controller.cpp

moc_tcp_listener.o: moc_tcp_listener.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_tcp_listener.o moc_tcp_listener.cpp

moc_xml_handler.o: moc_xml_handler.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_xml_handler.o moc_xml_handler.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

