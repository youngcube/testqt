#ifndef MACUTILSMANAGER_H
#define MACUTILSMANAGER_H

//mac相关oc代码
class MacUtilsManager
{
public:

    //移除标题栏的同时，保留最大最小化按钮
    static void removeTitlebarFromWindow(long winId = -1);
};

#endif // MACUTILSMANAGER_H
