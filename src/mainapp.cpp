#include "mainapp.h"
#ifdef Q_OS_MAC
#include "macutilsmanager.h"
#endif
MainApp::MainApp(QObject *parent): QObject (parent)
{

}

MainApp::~MainApp(){}

void MainApp::loadQml()
{
#ifdef QT_DEBUG
    //根据实际项目位置来改
#ifdef Q_OS_WIN
    const QUrl url = QUrl::fromLocalFile("D:/SourceTree/qtqmlexample2/resource/qml/main/main.qml");
#else
    const QUrl url(QStringLiteral("/Users/cube/SourceTree/qtqmlexample2/resource/qml/main/main.qml"));
#endif

#else
    const QUrl url(QStringLiteral("qrc:/resource/qml/main/main.qml"));
#endif
    m_engine->trimComponentCache();
    m_engine->clearComponentCache();
    m_engine->trimComponentCache();

    m_engine->load(url);

#ifdef Q_OS_MAC
    MacUtilsManager::removeTitlebarFromWindow();
#endif
}
