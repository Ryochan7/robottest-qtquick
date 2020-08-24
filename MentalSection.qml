import QtQuick 2.7
import QtQuick.Controls 2.0

Item {

    property int scorePageNum: 1
    property int currentQuestion: 0
    property QtObject rankCalculator

    Flickable
    {
        focus: true
        ScrollBar.vertical: ScrollBar {
            active: true
        }

        flickableDirection: Flickable.VerticalFlick

        contentWidth: content.childrenRect.width
        contentHeight: content.childrenRect.height
        width: parent.width
        height: parent.height

        Column {
            id: content

            CheckBox {
                id: autismBox
                text: qsTr("No significant autism, aspergers, etc.")
                z: 1

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 0, checked)
                }
            }

            CheckBox {
                id: depressionBox
                text: qsTr("No significant depression")
                smooth: true

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 1, checked)
                }
            }

            CheckBox {
                id: medsBox
                text: qsTr("Taking meds or thearpy if applicable")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 2, checked)
                }
            }

            CheckBox {
                id: contentBox
                text: qsTr("Feel content or happy most of the time")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 3, checked)
                }
            }

            CheckBox {
                id: loveBox
                text: qsTr("Feel love for someone, family included")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 4, checked)
                }
            }

            CheckBox {
                id: niceBox
                text: qsTr("You think you're a nice person")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 5, checked)
                }
            }

            CheckBox {
                id: anxiousFFBox
                text: qsTr("Not anxious around family / friends")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 6, checked)
                }
            }

            CheckBox {
                id: uncomfortableBox
                text: qsTr("Not uncomfortable around strangers")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 7, checked)
                }
            }

            CheckBox {
                id: anxiousOutsideBox
                text: qsTr("Don't feel anxious about going outside")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 8, checked)
                }
            }

            CheckBox {
                id: staredBox
                text: qsTr("Don't feel stared at when outside")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 9, checked)
                }
            }

            CheckBox {
                id: motivationBox
                text: qsTr("Feel motivation during the day")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 10, checked)
                }
            }

            CheckBox {
                id: emotionBox
                text: qsTr("No wild changes in emotion")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 11, checked)
                }
            }

            CheckBox {
                id: conscienceBox
                text: qsTr("Have a clean conscience")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 12, checked)
                }
            }

            CheckBox {
                id: shockingBox
                text: qsTr("Don't find joy in shocking/gory material")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 13, checked)
                }
            }

            CheckBox {
                id: sleepBox
                text: qsTr("Get to sleep (quite) easily at night")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 14, checked)
                }
            }

            CheckBox {
                id: upEasilyBox
                text: qsTr("Get up (quite) easily in the morning")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 15, checked)
                }
            }

            CheckBox {
                id: sexualAttractionBox
                text: qsTr("No sexual attraction to under 15s")

                onCheckedChanged: {
                    rankCalculator.checkanswer(1, 16, checked)
                }
            }

        }
    }
}
