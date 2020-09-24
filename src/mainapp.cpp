#include "mainapp.h"

MainApp::MainApp(QObject *parent): QObject (parent)
{

}

MainApp::~MainApp(){}

void MainApp::loadQml()
{
#ifdef QT_DEBUG
    const QUrl url(QStringLiteral("/Users/cube/SourceTree/qtqmlexample2/resource/qml/main/main.qml"));
#else
    const QUrl url(QStringLiteral("qrc:/resource/qml/main/main.qml"));
#endif
    m_engine->trimComponentCache();
    m_engine->clearComponentCache();
    m_engine->trimComponentCache();

    m_engine->load(url);
}
