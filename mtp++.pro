#-------------------------------------------------
#
# Project created by QtCreator 2012-11-26T16:05:39
#
#-------------------------------------------------

TARGET = mtp++
TEMPLATE = lib
CONFIG -= qt # Disable Qt libraries

INCLUDEPATH += /opt/local/include
LIBS += -L/opt/local/lib -lmtp -lboost_thread-mt -lboost_system-mt

SOURCES += mtpdevice.cpp

HEADERS += mtpdevice.hpp
unix:!symbian {
	maemo5 {
		target.path = /opt/usr/lib
	} else {
		target.path = /usr/lib
	}
	INSTALLS += target
}
