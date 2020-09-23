#ifndef MAINAPP_H
#define MAINAPP_H


#include <QObject>
#include <QQmlApplicationEngine>

class MainApp: public QObject
{

    Q_OBJECT
public:
    MainApp(QObject* parent = Q_NULLPTR);
    ~MainApp();

    Q_INVOKABLE void loadQml();
    void setEngine(QQmlApplicationEngine *engine) { m_engine = engine; }

private:
    QQmlApplicationEngine* m_engine;
};

#endif // MAINAPP_H
