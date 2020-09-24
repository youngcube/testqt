#ifndef FRAMELESSWINDOWHELPER_H
#define FRAMELESSWINDOWHELPER_H

#include "basicframelesshelper.h"
#include <QQmlParserStatus>
#include <QQuickWindow>
#include <QQuickItem>

class WindowHandler;

class FramelessWindowHelper
        #ifdef Q_OS_WIN
        : public BasicFramelessHelper, public QQmlParserStatus
        #else
        : public QObject, public QQmlParserStatus
        #endif
{
    Q_OBJECT
    Q_INTERFACES(QQmlParserStatus)
public:
    explicit FramelessWindowHelper(QObject *parent = 0);
    ~FramelessWindowHelper();

    // QQmlParserStatus interface
public:
    virtual void classBegin() Q_DECL_FINAL;
    virtual void componentComplete() Q_DECL_FINAL;

    // BasicFramelessHelper interface
public:
#ifdef Q_OS_WIN
    virtual bool nativeEventFilter(void *message, long *result) Q_DECL_FINAL;
    virtual bool isCaption(int x, int y) Q_DECL_FINAL;
#else
    bool eventFilter(QObject *watched, QEvent *event) Q_DECL_OVERRIDE;
#endif

private:
    QQuickWindow *m_quickWindow;
    QHash<QObject*, WindowHandler*> windows;
};

#endif // FRAMELESSWINDOWHELPER_H
