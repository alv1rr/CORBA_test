TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        MyExampleInterface_impl.cpp \
        client.cpp \
        exampleSK.cc

HEADERS += \
    MyExampleInterface_impl.h \
    example.hh


LIBS += -L$(OMNIORB_HOME)/lib -lomnithread -lomniORB4 -lncurses


INCLUDEPATH += /usr/include/omniORB4
