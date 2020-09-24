#ifndef FRAMELESSWIDGETHELPER_H
#define FRAMELESSWIDGETHELPER_H

#include <QObject>
#include <QWidget>
#include "basicframelesshelper.h"

class FramelessWidgetHelper : public BasicFramelessHelper
{
public:
    explicit FramelessWidgetHelper(QWidget *parent);

    // QObject interface
public:
#ifdef Q_OS_WIN
    virtual bool eventFilter(QObject *watched, QEvent *event) Q_DECL_FINAL;
#endif

    // BasicFramelessHelper interface
public:
#ifdef Q_OS_WIN
    virtual bool nativeEventFilter(void *message, long *result) Q_DECL_FINAL;
#endif

protected:
    bool isCaption(int x, int y);
private:
    QWidget *m_widget;
};

#endif // FRAMELESSWIDGETHELPER_H
