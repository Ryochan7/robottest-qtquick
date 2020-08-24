#ifndef RANKCALCBACKEND_H
#define RANKCALCBACKEND_H

#include <QObject>

#include "rankcalculator.h"

class RankCalcBackend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(RankCalculator *rankCalculator READ getRankCalculator CONSTANT)
public:
    explicit RankCalcBackend(QObject *parent = nullptr);
    RankCalculator* getRankCalculator();

private:
    RankCalculator *rankcalculator;

signals:

public slots:
};

#endif // RANKCALCBACKEND_H
