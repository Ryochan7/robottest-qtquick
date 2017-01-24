#ifdef QT_WIDGETS_LIB
  #include <QApplication>
#else
  #include <QGuiApplication>
#endif

#include <QQmlContext>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "rankcalculator.h"

int main(int argc, char *argv[])
{
#ifdef QT_WIDGETS_LIB
    QApplication app(argc, argv);
#else
    QGuiApplication app(argc, argv);
#endif

    QQmlApplicationEngine engine;
    qmlRegisterUncreatableType<RankCalculator>("com.mycompany.qmlcomponents", 1, 0, "RankCalculator",
                                               "Only used for enum");

    engine.rootContext()->setContextProperty("rankcalculator", new RankCalculator);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

