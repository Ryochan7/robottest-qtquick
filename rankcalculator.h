#ifndef RANKCALCULATOR_H
#define RANKCALCULATOR_H

#include <QObject>

class RankCalculator : public QObject
{
    Q_OBJECT

public:
    enum Rank {
        GrandWizard,
        Wizard,
        WizardApprentice,
        Robot,
        Cyborg,
        SlightlyStrange,
        Normalfag,
        ChadStacey,
        Successful
    };
    Q_ENUMS(Rank)

    Q_PROPERTY(int finalResult READ getFinalResult)
    Q_PROPERTY(Rank finalRank READ getFinalRank)
    explicit RankCalculator(QObject *parent = 0);
    int getFinalResult();
    Rank getFinalRank();


protected:
    bool answers[5][17];
    Rank rank;
    unsigned int result;

signals:

public slots:
    void checkanswer(int page, int column, bool answer);
    void computeanswer();
};

#endif // RANKCALCULATOR_H
