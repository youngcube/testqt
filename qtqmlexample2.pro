QT += quick core gui widgets network multimedia gui-private printsupport

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

win32: LIBS += -L"C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Lib" -ladvapi32 -luser32

SOURCES += \
        src/main.cpp \
        src/mainapp.cpp \
        src/FramelessHelper/windowhandler.cpp \
        src/FramelessHelper/basicframelesshelper.cpp \
        src/FramelessHelper/framelesswidgethelper.cpp \
        src/FramelessHelper/framelesswindowhelper.cpp \
        src/FramelessHelper/nativeeventfilter.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    src/mainapp.h \
    src/FramelessHelper/windowhandler.h \
    src/FramelessHelper/basicframelesshelper.h \
    src/FramelessHelper/framelesswidgethelper.h \
    src/FramelessHelper/framelesswindowhelper.h \
    src/FramelessHelper/nativeeventfilter.h
