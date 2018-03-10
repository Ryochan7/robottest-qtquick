import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    property int scorePageNum: 0
    property int currentQuestion: 0

    Flickable
    {
        focus: true
        ScrollBar.vertical: ScrollBar {
            active: true
        }

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
                        rankcalculator.checkanswer(scorePageNum, 0, checked)
                    }
                }

                CheckBox {
                    id: weightBox
                    text: qsTr("Healthy weight for your age and sex")
                    smooth: true

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 1, checked)
                    }
                }

                CheckBox {
                    id: fitBox
                    text: qsTr("Particularly fit/strong/muscular")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 2, checked)
                    }
                }

                CheckBox {
                    id: sixFootBox
                    text: qsTr("At least 6'0 tall (M) / Good figure (F)")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 3, checked)
                    }
                }

                CheckBox {
                    id: exerciseBox
                    text: qsTr("Exercise regularly")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 4, checked)
                    }
                }

                CheckBox {
                    id: dietBox
                    text: qsTr("Have a decently healthy diet")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 5, checked)
                    }
                }

                CheckBox {
                    id: abnormalitiesBox
                    text: qsTr("Minor or no physical abnormalities")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 6, checked)
                    }
                }

                CheckBox {
                    id: smokingBox
                    text: qsTr("No smoking addiction - vaping included")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 7, checked)
                    }
                }

                CheckBox {
                    id: weedBox
                    text: qsTr("Don't smoke week / only occasionally")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 8, checked)
                    }
                }

                CheckBox {
                    id: alcoholBox
                    text: qsTr("No alcohol addiction")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 9, checked)
                    }
                }

                CheckBox {
                    id: otherDrugsBox
                    text: qsTr("No addiction to other drugs")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 10, checked)
                    }
                }

                CheckBox {
                    id: dentalBox
                    text: qsTr("Good dental hygience")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 11, checked)
                    }
                }

                CheckBox {
                    id: showerBox
                    text: qsTr("Shower regularly")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 12, checked)
                    }
                }

                CheckBox {
                    id: fashionBox
                    text: qsTr("Have at least a decent fashion sense")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 13, checked)
                    }
                }

                CheckBox {
                    id: visitDoctorBox
                    text: qsTr("Visit a doctor regularly")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 14, checked)
                    }
                }

                CheckBox {
                    id: hairStyleBox
                    text: qsTr("Have a good hairstyle")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 15, checked)
                    }
                }

                CheckBox {
                    id: prideBox
                    text: qsTr("Take pride in your body")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 16, checked)
                    }
                }

        }
    }
}
