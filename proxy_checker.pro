TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt


SOURCES += \
        main.c \
        log.c \
        proxy.c \
        sblist.c \
        socks4.c


HEADERS += \
        configs.h \
        log.h \
        proxy.h \
        sblist.h \
        socks4.h


LIBS += -lpthread