QT += core gui websockets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    application.cpp \
    globaldata.cpp \
    main.cpp \
    rpcwebsocketclient.cpp

HEADERS += \
    application.h \
    globaldata.h \
    rpcwebsocketclient.h

FORMS +=

include(view/view.pri)

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    res.qrc

QTQUICK_COMPILER_SKIPPED_RESOURCES += \
    res.qrc

win32-msvc*: {
    # 使 MSVC 能够正确编译 UTF-8 文件中的非 ASCII 字符
    QMAKE_CXXFLAGS += /utf-8
}
