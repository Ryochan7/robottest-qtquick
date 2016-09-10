#include <QApplication>
#include <QQmlContext>
#include <QQmlApplicationEngine>
#include <QtQml>

#include "rankcalculator.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterUncreatableType<RankCalculator>("com.mycompany.qmlcomponents", 1, 0, "RankCalculator",
                                               "Only used for enum");

    engine.rootContext()->setContextProperty("rankcalculator", new RankCalculator);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

