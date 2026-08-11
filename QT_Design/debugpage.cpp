// debugPage.cpp
#include "debugPage.h"
#include <QQmlApplicationEngine>


debugPage::debugPage(QObject *parent) : QObject(parent)
{
    // Constructor (if needed)
}

void debugPage::openDebugPage()
{
    QQmlApplicationEngine engine;
    // engine.load(QUrl(QStringLiteral("qrc:/debugPage.qml")));

    view.setSource(QUrl(QStringLiteral("qrc:/debugPage.qml")));
    view.setTitle("abc");
    view.show();
}
