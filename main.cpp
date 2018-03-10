#include <QQmlContext>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "rankcalculator.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterUncreatableType<RankCalculator>("com.mycompany.qmlcomponents", 1, 0, "RankCalculator",
                                               "Only used for enum");

    engine.rootContext()->setContextProperty("rankcalculator", new RankCalculator);
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
