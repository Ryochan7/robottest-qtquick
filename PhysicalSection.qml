import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    property int scorePageNum: 0
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
                    id: attractiveBox
                    text: qsTr("Have an attractive face")
                    z: 1

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 0, checked)
                    }
                }

                CheckBox {
                    id: weightBox
                    text: qsTr("Healthy weight for your age and sex")
                    smooth: true

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 1, checked)
                    }
                }

                CheckBox {
                    id: fitBox
                    text: qsTr("Particularly fit/strong/muscular")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 2, checked)
                    }
                }

                CheckBox {
                    id: sixFootBox
                    text: qsTr("At least 6'0 tall (M) / Good figure (F)")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 3, checked)
                    }
                }

                CheckBox {
                    id: exerciseBox
                    text: qsTr("Exercise regularly")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 4, checked)
                    }
                }

                CheckBox {
                    id: dietBox
                    text: qsTr("Have a decently healthy diet")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 5, checked)
                    }
                }

                CheckBox {
                    id: abnormalitiesBox
                    text: qsTr("Minor or no physical abnormalities")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 6, checked)
                    }
                }

                CheckBox {
                    id: smokingBox
                    text: qsTr("No smoking addiction - vaping included")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 7, checked)
                    }
                }

                CheckBox {
                    id: weedBox
                    text: qsTr("Don't smoke week / only occasionally")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 8, checked)
                    }
                }

                CheckBox {
                    id: alcoholBox
                    text: qsTr("No alcohol addiction")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 9, checked)
                    }
                }

                CheckBox {
                    id: otherDrugsBox
                    text: qsTr("No addiction to other drugs")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 10, checked)
                    }
                }

                CheckBox {
                    id: dentalBox
                    text: qsTr("Good dental hygiene")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 11, checked)
                    }
                }

                CheckBox {
                    id: showerBox
                    text: qsTr("Shower regularly")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 12, checked)
                    }
                }

                CheckBox {
                    id: fashionBox
                    text: qsTr("Have at least a decent fashion sense")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 13, checked)
                    }
                }

                CheckBox {
                    id: visitDoctorBox
                    text: qsTr("Visit a doctor regularly")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 14, checked)
                    }
                }

                CheckBox {
                    id: hairStyleBox
                    text: qsTr("Have a good hairstyle")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 15, checked)
                    }
                }

                CheckBox {
                    id: prideBox
                    text: qsTr("Take pride in your body")

                    onCheckedChanged: {
                        rankCalculator.checkanswer(scorePageNum, 16, checked)
                    }
                }

        }
    }
}
