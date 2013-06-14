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
    INCLUDEPATH += /cygdrive/c/dev/win32-dev/gtk_2_0-2.14/include/glib-2.0 \
        /cygdrive/c/dev/win32-dev/gtk_2_0-2.14/include/glib-2.0/include \
        /cygdrive/c/dev/win32-dev/gtk_2_0-2.14/lib/glib-2.0/include \
        /cygdrive/c/dev/pidgin-main/libpurple

    INCLUDEPATH += c:/dev/win32-dev/gtk_2_0-2.14/include/glib-2.0 \
        c:/dev/win32-dev/gtk_2_0-2.14/include/glib-2.0/include \
        C:/dev/win32-dev/gtk_2_0-2.14/lib/glib-2.0/include \
        c:/dev/pidgin-main/libpurple


    LIBS += -L"C:\dev\win32-dev\gtk-2.24.10\lib"
    LIBS += -L"C:\dev\pidgin-main\libpurple"
}
LIBS += -lglib-2.0 \
    -lpurple

SOURCES += qpurple.cpp \
    qpurpletimer.cpp \
    qpurpleionotifier.cpp
HEADERS += qpurple.h \
    qpurpletimer.h \
    qpurpleionotifier.h
