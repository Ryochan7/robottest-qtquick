import QtQuick 2.0
import QtQuick.Layouts 1.1

Item {
    id: rankingListItem
    objectName: "rankingListItem"
    width: mainComptView.width
    height: mainComptView.height

    Text {
        id: rankingPageHeading
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        text: qsTr("Rankings")

        font.pointSize: 24 * fontSizeMulti
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    ListView {
        id: rankingsView
        model: rankDescriptionList.length
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: rankingPageHeading.bottom
        anchors.bottom: parent.bottom
        clip: true
        anchors {
            topMargin: 10
            bottomMargin: 0
            leftMargin: 6
            rightMargin: 6
        }

        delegate: ColumnLayout {
            width: parent.width
            spacing: 10

            Image {
                id: rankingListImage
                source: Qt.resolvedUrl("images/" + rankImageList[index])
                Layout.preferredWidth: mainComptView.height * 0.30
                Layout.preferredHeight: mainComptView.height * 0.30
                //width: parent.width
                //height: 100
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: rankingListText
                //anchors.left: parent.left
                //anchors.right: parent.right
                //anchors.top: rankingListImage.bottom
                //anchors.topMargin: 10

                text: rankDescriptionList[index]
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                Layout.fillWidth: true
            }

            Rectangle {
                Layout.preferredWidth: parent.width
                Layout.preferredHeight: 2
                //width: parent.width
                //height: 2
                //anchors.top: rankingListText.bottom
                color: "#d3d3d3"
                visible: index !== (rankDescriptionList.length-1)
            }

            Item {
                width: parent.width
                height: 10
                visible: index !== (rankDescriptionList.length-1)
            }
        }
    }
}

