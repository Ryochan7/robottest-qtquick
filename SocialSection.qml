import QtQuick 2.7
import QtQuick.Controls 2.0

Item {
    property int scorePageNum: 2
    property int currentQuestion: 0
    property QtObject rankCalculator

    Flickable {
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
                id: romanticBox
                text: qsTr("Had at least one romantic partner before")
                z: 1

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 0, checked)
                }
            }

            CheckBox {
                id: multiplePartnersBox
                text: qsTr("Had multiple romantic partners before")
                smooth: true

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 1, checked)
                }
            }

            CheckBox {
                id: virginBox
                text: qsTr("Not a virgin")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 2, checked)
                }
            }

            CheckBox {
                id: sexPartnersBox
                text: qsTr("Had sex with multiple partners before")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 3, checked)
                }
            }

            CheckBox {
                id: kissedRomanticBox
                text: qsTr("Kissed romantically before")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 4, checked)
                }
            }

            CheckBox {
                id: heldHandsBox
                text: qsTr("Held hands romantically before")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 5, checked)
                }
            }

            CheckBox {
                id: sixMonthsBox
                text: qsTr("Had a relationship in the last 6 months")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 6, checked)
                }
            }

            CheckBox {
                id: relationshipFamilyBox
                text: qsTr("Have a good relationship with family")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 7, checked)
                }
            }

            CheckBox {
                id: oneRealFriendBox
                text: qsTr("Have at least one friend in real life")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 8, checked)
                }
            }

            CheckBox {
                id: severalFriendsBox
                text: qsTr("Have at least several friends in real life")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 9, checked)
                }
            }

            CheckBox {
                id: socializeWeekBox
                text: qsTr("Socialise at least once a week")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 10, checked)
                }
            }

            CheckBox {
                id: socializeDayBox
                text: qsTr("Socialise at least once a day")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 11, checked)
                }
            }

            CheckBox {
                id: leaveHouseBox
                text: qsTr("Leave the house on the regular")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 12, checked)
                }
            }

            CheckBox {
                id: enjoyOthersBox
                text: qsTr("Enjoy being around others on occasion")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 13, checked)
                }
            }

            CheckBox {
                id: enjoyOthersPossibleBox
                text: qsTr("Enjoy being arounds others when possible")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 14, checked)
                }
            }

            CheckBox {
                id: screenTimeBox
                text: qsTr("Recreational screen-time up to 4h a day")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 15, checked)
                }
            }

            CheckBox {
                id: socialNetworksBox
                text: qsTr("Use social networks regularly")

                onCheckedChanged: {
                    rankCalculator.checkanswer(scorePageNum, 16, checked)
                }
            }

        }
    }
}
