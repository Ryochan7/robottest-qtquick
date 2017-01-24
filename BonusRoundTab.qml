import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Tab {
    id: bonusRoundtab
    title: "Bonus Round!"

    property int scorePageNum: 4
    property int currentQuestion: 0

    ScrollView {
        id: scroll
        flickableItem.flickableDirection: Flickable.VerticalFlick

        Column {
            id: content

            GridLayout {
                id: gridLayout5

                transformOrigin: Item.Center
                rows: 17
                columns: 1
                rowSpacing: 6

                CheckBox {
                    id: femaleBox
                    text: qsTr("You are female")
                    z: 1

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 0, checked)
                    }
                }

                CheckBox {
                    id: disposableIncomeBox
                    text: qsTr("Have plenty of disposable income")
                    smooth: true

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 1, checked)
                    }
                }

                CheckBox {
                    id: numberContactsBox
                    text: qsTr("Have a very large number of contacts")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 2, checked)
                    }
                }

                CheckBox {
                    id: littleInterestAnimeBox
                    text: qsTr("Have little interest in anime")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 3, checked)
                    }
                }

                CheckBox {
                    id: noInterestTabletopBox
                    text: qsTr("Have no interest in tabletop gaming")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 4, checked)
                    }
                }

                CheckBox {
                    id: consoleGamingBox
                    text: qsTr("Gaming is mostly limited in console")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 5, checked)
                    }
                }

                CheckBox {
                    id: healthyOppositeSexBox
                    text: qsTr("Healthy view of the opposite sex")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 6, checked)
                    }
                }

                CheckBox {
                    id: noRecordBox
                    text: qsTr("No criminal record as an adult")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 7, checked)
                    }
                }

                CheckBox {
                    id: beenTextedBox
                    text: qsTr("Been texted by a real person recently")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 8, checked)
                    }
                }

                CheckBox {
                    id: enjoySnapchatBox
                    text: qsTr("Enjoy using YikYak and/or Snapchat")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 9, checked)
                    }
                }

                CheckBox {
                    id: smartPhoneBox
                    text: qsTr("You have a decent smartphone")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 10, checked)
                    }
                }

                CheckBox {
                    id: fetishBox
                    text: qsTr("Fetish: None; Feet; BDSM; DP; etc.")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 11, checked)
                    }
                }

                CheckBox {
                    id: hentaiBox
                    text: qsTr("Don't consume hentai; ecchi; etc. material")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 12, checked)
                    }
                }
            }
        }
    }
}
