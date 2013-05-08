QT += network \
    xml
QT -= gui
TARGET = qpurple
TEMPLATE = lib
DEFINES += QPURPLE_LIBRARY
unix {
	INCLUDEPATH += /usr/include/glib-2.0 \
		/usr/lib/glib-2.0/include \
		/usr/include/libpurple \
		../pidgin-main/libpurple \
		/usr/lib/x86_64-linux-gnu/glib-2.0/include/
}

win32 {
    INCLUDEPATH += /cygdrive/c/dev/pidgin-main/win32-dev/gtk_2_0-2.14/include/glib-2.0 \
        /cygdrive/c/dev/pidgin-main/win32-dev/gtk_2_0-2.14/include/glib-2.0/include \
        /cygdrive/c/dev/pidgin-main/libpurple
}
LIBS += -lglib-2.0 \
    -lpurple

SOURCES += qpurple.cpp \
    qpurpletimer.cpp \
    qpurpleionotifier.cpp
HEADERS += qpurple.h \
    qpurpletimer.h \
    qpurpleionotifier.h
