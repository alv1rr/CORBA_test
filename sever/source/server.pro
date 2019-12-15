TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        MyExampleInterface_impl.cpp \
        exampleSK.cc \
        server.cpp

HEADERS += \
    MyExampleInterface_impl.h \
    example.hh



LIBS += -L$(OMNIORB_HOME)/lib -lomnithread -lomniORB4


INCLUDEPATH += /usr/include/omniORB4
