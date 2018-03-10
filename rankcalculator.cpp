#include <QDebug>

#include "rankcalculator.h"

static int scores[5][17] = {
    5, 4, 2, 3, 1, 1, 3, 1, 1, 1, 2, 1, 2, 2, 1, 2, 1,
    3, 3, 1, 3, 2, 1, 3, 1, 2, 1, 2, 1, 2, 1, 1, 1, 3,
    5, 3, 8, 4, 3, 1, 2, 2, 2, 4, 1, 3, 1, 1, 4, 1, 2,
    3, 1, 4, 2, 2, 1, 1, 2, 2, 1, 1, 1, 1, 2, 1, 3, 3,
    6, 1, 3, 2, 1, 2, 3, 1, 2, 1, 3, 1, 3, 0, 0, 0, 0,
};

RankCalculator::RankCalculator(QObject *parent) : QObject(parent)
{
    memset(&answers, 0, sizeof(answers));
    result = 0;
    rank = GrandWizard;
}

void RankCalculator::checkanswer(int page, int column, bool answer)
{
    answers[page][column] = answer;

}

void RankCalculator::computeanswer()
{
    unsigned int totalScore = 0;
    for (int i = 0; i < 5; i++)
    {
        for (int j = 0; j < 17; j++)
        {
            if (answers[i][j])
            {
                totalScore += scores[i][j];
            }
        }
    }

    result = totalScore;

    if (result <= 8)
    {
        rank = GrandWizard;
    }
    else if (result >= 9 && result <= 24)
    {
        rank = Wizard;
    }
    else if (result >= 25 && result <= 34)
    {
        rank = WizardApprentice;
    }
    else if (result >= 35 && result <= 58)
    {
        rank = Robot;
    }
    else if (result >= 59 && result <= 81)
    {
        rank = Cyborg;
    }
    else if (result >= 82 && result <= 94)
    {
        rank = SlightlyStrange;
    }
    else if (result >= 95 && result <= 115)
    {
        rank = Normalfag;
    }
    else if (result >= 116 && result <= 129)
    {
        rank = ChadStacey;
    }
    else if (result >= 130)
    {
        rank = Successful;
    }

    //qDebug() << "FINAL SCORE: " << totalScore;
}

int RankCalculator::getFinalResult()
{
    return result;
}

RankCalculator::Rank RankCalculator::getFinalRank()
{
    return rank;
}

int RankCalculator::getPageScore(int page)
{
    int result = 0;
    if (page >= 0 && page <= 4)
    {
        for (int j = 0; j < 17; j++)
        {
            if (answers[page][j])
            {
                result += scores[page][j];
            }
        }
    }

    return result;
}
