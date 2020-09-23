#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "mainapp.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

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

    const QUrl url(QStringLiteral("qrc:/resource/qml/main/main.qml"));
    engine.load(url);
    if (engine.rootObjects().isEmpty())
    {
        return -1;
    }
    return app.exec();
}
