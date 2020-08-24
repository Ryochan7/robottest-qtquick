#include "rankcalcbackend.h"

RankCalcBackend::RankCalcBackend(QObject *parent) : QObject(parent)
{
    rankcalculator = new RankCalculator(this);
}

RankCalculator* RankCalcBackend::getRankCalculator()
{
    return rankcalculator;
}
