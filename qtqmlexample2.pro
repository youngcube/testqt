QT += quick core gui widgets network multimedia gui-private printsupport
win32: QT += winextras
CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

win32: LIBS += -L"C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Lib" -ladvapi32 -luser32

macx:LIBS += -framework Foundation -framework Cocoa
macx:INCLUDEPATH += /System/Library/Frameworks/Foundation.framework/Versions/C/Headers \
/System/Library/Frameworks/AppKit.framework/Headers \
/System/Library/Frameworks/Cocoa.framework/Headers

PRECOMPILED_HEADER = src/eudic_prefixheader.h

HEADERS += \
    src/eudic_prefixheader.h \
    src/macutilsmanager.h \
    src/mainapp.h \
    src/FramelessHelper/basicframelesshelper.h \
    src/FramelessHelper/framelesswidgethelper.h \
    src/FramelessHelper/framelesswindowhelper.h \
    src/customtype.h \
    src/treeitem.h \
    src/treemodel.h \

win32: HEADERS += \
                src/FramelessHelper/nativeeventfilter.h

macx: HEADERS += \
                src/macutilsmanager.h \

else: HEADERS += \
                src/FramelessHelper/windowhandler.h


SOURCES += \
        src/main.cpp \
        src/mainapp.cpp \
        src/FramelessHelper/basicframelesshelper.cpp \
        src/FramelessHelper/framelesswidgethelper.cpp \
        src/FramelessHelper/framelesswindowhelper.cpp \
        src/customtype.cpp \
        src/treeitem.cpp \
        src/treemodel.cpp \

win32: SOURCES += \
                src/FramelessHelper/nativeeventfilter.cpp

macx: SOURCES += \
                src/macutilsmanager.mm \

else: SOURCES += \
                src/FramelessHelper/windowhandler.cpp


RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


