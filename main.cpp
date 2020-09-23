#include <QGuiApplication>
#include <QQmlContext>
#include "enhancedqmlapplicationengine.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    EnhancedQmlApplicationEngine *engine = new EnhancedQmlApplicationEngine();
    engine->rootContext()->setContextProperty("$QmlEngine", engine);

    const QUrl url(QStringLiteral("qrc:/resource/qml/main/main.qml"));

    QObject::connect(engine, &QQmlApplicationEngine::objectCreated, &app, [url](QObject *obj, const QUrl &objUrl)
    {
        if (!obj && url == objUrl)
        {
            QCoreApplication::exit(-1);
        }

    }, Qt::QueuedConnection);
    engine->load(url);

    return app.exec();
}
