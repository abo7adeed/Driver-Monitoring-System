// #include <QGuiApplication>
// #include <QQmlApplicationEngine>

// #include <QQmlContext>


// int main(int argc, char *argv[])
// {
// #if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
//     QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
// #endif
//     QGuiApplication app(argc, argv);

//     QQmlApplicationEngine engine;
//     const QUrl url(QStringLiteral("qrc:/main.qml"));
//     QObject::connect(
//         &engine,
//         &QQmlApplicationEngine::objectCreated,
//         &app,
//         [url](QObject *obj, const QUrl &objUrl) {
//             if (!obj && url == objUrl)
//                 QCoreApplication::exit(-1);
//         },

//         Qt::QueuedConnection);


//     // Load your QML file
//     engine.load(url);

//     return app.exec();
// }
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "debugPage.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));

    // Create your custom object
    // debugPage debugpagee;

    // // Set the custom object as a context property
    // engine.rootContext()->setContextProperty("debugpagee", &debugpagee);

    // // Load your QML file
    engine.load(url);

    // if (engine.rootObjects().isEmpty()) {
    //     qWarning() << "Failed to load QML file!";
    //     return -1;
    // }

    // // Debug statement
    // qDebug() << "Application started. Debug page loaded.";
    return app.exec();
}
