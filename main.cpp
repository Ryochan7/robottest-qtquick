#include <QQmlContext>
#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "constants.h"
#include "rankcalculator.h"
#include "backend/rankcalcbackend.h"

void RegisterClassesForQML()
{
    qmlRegisterUncreatableType<RankCalculator>(ProjectConstants::packageId,
                                               ProjectConstants::packageVersionMajor, ProjectConstants::packageVersionMinor, "RankCalculator",
                                               "Only used for enum");

    qmlRegisterType<RankCalcBackend>(ProjectConstants::packageId,
                                     ProjectConstants::packageVersionMajor, ProjectConstants::packageVersionMinor,
                                     "RankCalcBackend");
}

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    RegisterClassesForQML();

    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));

    return app.exec();
}
