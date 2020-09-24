#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "mainapp.h"
#include "FramelessHelper/framelesswindowhelper.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    //https://github.com/qtdevs/FramelessHelper/issues/7 避免黑色边框
    //https://bugreports.qt.io/browse/QTBUG-40485?focusedCommentId=376505&page=com.atlassian.jira.plugin.system.issuetabpanels%3Acomment-tabpanel#comment-376505
    QCoreApplication::setAttribute(Qt::AA_UseOpenGLES);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    MainApp appp;
    appp.setEngine(&engine);

    engine.rootContext()->setContextProperty("main_app", &appp);
#ifdef QT_DEBUG
    engine.rootContext()->setContextProperty("DEBUG", QVariant(true));
#else
    engine.rootContext()->setContextProperty("DEBUG", QVariant(false));
#endif

    //注册给qml使用
    qmlRegisterType<FramelessWindowHelper>("FramelessWindowHelper", 1, 0, "FramelessWindowHelper");
    const QUrl url(QStringLiteral("qrc:/resource/qml/main/main.qml"));
    engine.load(url);
    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }
    return app.exec();
}
