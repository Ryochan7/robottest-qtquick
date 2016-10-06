import QtQuick 2.3
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1
import QtQml.Models 2.1

import com.mycompany.qmlcomponents 1.0

ApplicationWindow {
    id: applicationWindow1
    visible: true
    width: 640
    height: 480
    minimumWidth: 300
    minimumHeight: minimumWidth
    title: qsTr("Robot Test 4.0")

    property var rankDescriptionList: [
        "No longer human, you are barely attached to the living world by a thin thread. " +
        "The curse of autism eternal and spaghetti all-powerful has consumed your life and soul as you straddle the line " +
        "between this world and the next.",

        "You have given up conventional human desires and needs in favour of magical powers, only obtainable by some " +
        "of the most concentrated, powerful autism physically possible.",

        "Although hope for you is bleak, it is not impossible. You have a great potential for magical powers but " +
        "time may yet heal your soul into that of a mortal.",

        "Your flesh has turned to metal from feels. A little magic flows through your enlightened veins, and you " +
        "are a likely suspect for a mass shooting in the beta uprising - however, this would require going outside.",

        "You are a sorry amalgam of robot and regular human. You linger in two worlds at once, an outsider to both " +
        "the normies and the robots. As a result, you may be on your own with your feels.",

        "You have several qualities of a robot but participate largely in the normalfag world. You probably " +
        "even hang out with normal, although they can sense you are not one of them so you struggle socially.",

        "You don't necessarily have the best genes or looks, but you find socialising easy and probably have had " +
        "plenty of relationships before. You have a very typical personality and set of interests, and need to " +
        "get off my board.",

        "You are a step above the average normie. Blessed with some fine genetics, you don't need to work very hard " +
        "to get what you want - finding a bf/gf is like childsplay to you, and even the normies get a little jealous.",

        "Your looks, intelligence and charisma have helped you overcome struggles, leading you to a wealthy and " +
        "comfortable point in your life. All thanks to a mix of luck and talent, you are a shining example of a human."
    ];

    property var rankImageList: [
        "grandwizard.png",
        "wizard.png",
        "wizardapprentice.png",
        "robot.png",
        "cyborg.png",
        "slightlystrange.png",
        "normalfag.png",
        "chadstacey.png",
        "successful.png"
    ];

    function getRankString(rank)
    {
        var text = "";
        switch (rank)
        {
        case RankCalculator.GrandWizard:
            text = "Grand Wizard";
            break;
        case RankCalculator.Wizard:
            text = "Wizard";
            break;
        case RankCalculator.WizardApprentice:
            text = "Wizard Apprentice";
            break;
        case RankCalculator.Robot:
            text = "Robot";
            break;
        case RankCalculator.Cyborg:
            text = "Cyborg";
            break;
        case RankCalculator.SlightlyStrange:
            text = "Slightly Strange";
            break;
        case RankCalculator.Normalfag:
            text = "Normalfag"
            break;
        case RankCalculator.ChadStacey:
            text = "Chad/Stacey";
            break;
        case RankCalculator.Successful:
            text = "Successful";
            break;
        default:
            text = "";
        }

        return text;
    }

    menuBar: MenuBar {
        id: mainMenuBar

        Menu {
            title: qsTr("File")

            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }

    ListView {
        id: mainComptView
        anchors.left: parent.left
        anchors.right: parent.right

        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10

        orientation: ListView.Horizontal
        highlightRangeMode: ListView.StrictlyEnforceRange
        interactive: false

        property bool resultsShown: false

        model: ObjectModel {
            Item {
                id: tabsItem
                width: mainComptView.width
                height: mainComptView.height
                visible: mainComptView.currentIndex === 0

                TabView {
                    id: tabView

                    visible: true
                    frameVisible: true
                    currentIndex: 0
                    tabsVisible: true
                    tabPosition: 1

                    anchors.top: parent.top
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: newComputeButton.top
                    anchors.bottomMargin: 20

                    //width: parent.width
                    //height: parent.height - 40

                    PhysicalTab {
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.bottomMargin: 10
                    }

                    MentalTab {
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.bottomMargin: 10

                    }

                    SocialTab {
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.bottomMargin: 10

                    }

                    AccomplishmentsTab {
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.bottomMargin: 10
                    }

                    BonusRoundTab {
                        anchors.fill: parent
                        anchors.topMargin: 10
                        anchors.bottomMargin: 10
                    }
                }

                Button {
                    id: newComputeButton
                    text: qsTr("Compute!")
                    //anchors.top: tabView.bottom
                    //anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 20
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    //height: 20
                    tooltip: qsTr("Compute final score and your rank")
                    onClicked: {
                        rankcalculator.computeanswer();

                        rankLabel.text = getRankString(rankcalculator.finalRank)
                        finalScore.score = rankcalculator.finalResult;
                        rankDescription.text = rankDescriptionList[rankcalculator.finalRank];
                        rankImage.source = Qt.resolvedUrl("images/" + rankImageList[rankcalculator.finalRank]);

                        physicalScoreLabel.score = rankcalculator.getPageScore(0);
                        mentalScoreLabel.score = rankcalculator.getPageScore(1);
                        socialScoreLabel.score = rankcalculator.getPageScore(2);
                        accomplishmentScoreLabel.score = rankcalculator.getPageScore(3);
                        bonusScoreLabel.score = rankcalculator.getPageScore(4);

                        mainComptView.resultsShown = true;
                        mainComptView.positionViewAtIndex(1, ListView.SnapPosition)
                    }
                }
            }

            ScrollView {
                width: mainComptView.width
                height: mainComptView.height
                visible: mainComptView.currentIndex === 1 && mainComptView.resultsShown
                horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

                ColumnLayout {
                    id: rightColi
                    width: mainComptView.width - 40
                    y: 10
                    x: 20
                    spacing: 20

                    Image {
                        id: rankImage
                        source: ""
                        fillMode: Image.PreserveAspectFit
                        Layout.preferredWidth: mainComptView.height * 0.25
                        Layout.preferredHeight: mainComptView.height * 0.25
                    }

                    Flow {
                        id: scoresLayout

                        spacing: 50

                        Column {
                            spacing: 4
                            width: 250

                            Label {
                                id: finalScore
                                property int score: 0
                                text: "Total Score: " + score
                                font.bold: true
                            }

                            Label {
                                id: rankHeader
                                text: "Rank:"
                                font.bold: true
                                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                            }

                            Label {
                                id: rankLabel

                                onTextChanged: {
                                    visible = text.length > 0 ? true : false;
                                }
                            }

                            Item {
                                height: 10
                                width: 1
                            }
                        }

                        Column {
                            spacing: 4
                            width: 200

                            Label {
                                id: physicalScoreLabel
                                property int score: 0

                                text: "Physical: " + score
                            }

                            Label {
                                id: mentalScoreLabel

                                property int score: 0
                                text: "Mental: " + score
                            }

                            Label {
                                id: socialScoreLabel

                                property int score: 0
                                text: "Social: " + score
                            }

                            Label {
                                id: accomplishmentScoreLabel

                                property int score: 0
                                text: "Accomplishment: " + score
                            }

                            Label {
                                id: bonusScoreLabel

                                property int score: 0
                                text: "Bonus: " + score
                            }
                        }
                    }


                    Text {
                        id: rankDescription

                        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignCenter
                    }

                    Button {
                        id: returnToTestButton
                        text: qsTr("\u2190 Back");
                        onClicked: {
                            mainComptView.positionViewAtIndex(0, ListView.SnapPosition)
                        }
                    }
                }
            }
        }
    }
}

