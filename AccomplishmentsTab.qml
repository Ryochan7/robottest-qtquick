import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

Tab {
    id: accomplishmentTab
    title: "Accomplishment"

    property int scorePageNum: 3
    property int currentQuestion: 0

    ScrollView {
        id: scroll
        flickableItem.flickableDirection: Flickable.VerticalFlick

        Column {
            id: content

            GridLayout {
                id: gridLayout4

                transformOrigin: Item.Center
                rows: 17
                columns: 1
                rowSpacing: 6

                CheckBox {
                    id: parentsBox
                    text: qsTr("Don't live with your parents")
                    z: 1

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 0, checked)
                    }
                }

                CheckBox {
                    id: vehicleBox
                    text: qsTr("Own a vehicle")
                    smooth: true

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 1, checked)
                    }
                }

                CheckBox {
                    id: educationBox
                    text: qsTr("In education, employment, or training")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 2, checked)
                    }
                }

                CheckBox {
                    id: hobbyBox
                    text: qsTr("Have a hobby or sport - not vidya, etc.")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 3, checked)
                    }
                }

                CheckBox {
                    id: productiveBox
                    text: qsTr("Have a productive talent, e.g cooking")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 4, checked)
                    }
                }

                CheckBox {
                    id: ownRentSpaceBox
                    text: qsTr("Own or rent a living space")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 5, checked)
                    }
                }

                CheckBox {
                    id: livingCleanBox
                    text: qsTr("Keep your living space clean")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 6, checked)
                    }
                }

                CheckBox {
                    id: movingForwardBox
                    text: qsTr("Moving forward in life")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 7, checked)
                    }
                }

                CheckBox {
                    id: materialItemsBox
                    text: qsTr("Have material items to be proud of")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 8, checked)
                    }
                }

                CheckBox {
                    id: awardBox
                    text: qsTr("Won an award to be proud of")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 9, checked)
                    }
                }

                CheckBox {
                    id: childrenBox
                    text: qsTr("Have children you're proud of")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 10, checked)
                    }
                }

                CheckBox {
                    id: travellingBox
                    text: qsTr("Gone travelling / vacation in the past year")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 11, checked)
                    }
                }

                CheckBox {
                    id: manageMoneyBox
                    text: qsTr("Manage your money well")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 12, checked)
                    }
                }

                CheckBox {
                    id: independentLifeBox
                    text: qsTr("Live a largely independent life")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 13, checked)
                    }
                }

                CheckBox {
                    id: careForPetBox
                    text: qsTr("Take care of a pet")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 14, checked)
                    }
                }

                CheckBox {
                    id: higherEducationBox
                    text: qsTr("Attend(ed) higher education")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 15, checked)
                    }
                }

                CheckBox {
                    id: collegeDegreeBox
                    text: qsTr("Have a college degree")

                    onCheckedChanged: {
                        rankcalculator.checkanswer(scorePageNum, 16, checked)
                    }
                }
            }
        }
    }
}
