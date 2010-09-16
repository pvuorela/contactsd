include($$TOP_SOURCEDIR/check.pri)

CONFIG += test

QT -= gui
QT += testlib
QT += dbus

TARGET = test-contactsd

INCLUDEPATH += $$TOP_SOURCEDIR/src

HEADERS += test-contactsd.h \
    $$TOP_SOURCEDIR/src/contactsd.h \
    $$TOP_SOURCEDIR/src/importnotifierdbusadaptor.h \
    $$TOP_SOURCEDIR/src/contactsdpluginloader.h

SOURCES += test-contactsd.cpp \
    $$TOP_SOURCEDIR/src/contactsd.cpp \
    $$TOP_SOURCEDIR/src/importnotifierdbusadaptor.cpp  \
    $$TOP_SOURCEDIR/src/contactsdpluginloader.cpp

DEFINES += CONTACTSD_PLUGINS_DIR=\\\"$$LIBDIR/contactsd-1.0/plugins\\\"