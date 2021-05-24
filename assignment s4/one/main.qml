import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: imageOne
        source: "qrc:/objects/images/Kordos.jpg"
        anchors.centerIn: parent


        Rectangle {
            id: imageOneRectangle
            // width: parent
            // height: parent
            anchors.fill: parent
            color: "red"
            opacity: 0.0
            //Text: "qt.io"
        }

        Text {
            id: imageTextLink
            text: qsTr("<a href='http://qt.io'><></a>") // qsTr("")

            onLinkHovered: {
                console.log( "hover")
            }

            onLinkActivated: {
                Qt.openUrlExternally(link)
            }
        }

        MouseArea {
            id: imageOneMouseArea

            anchors.fill: parent
            hoverEnabled: true
            acceptedButtons: Qt.LeftButton
            onClicked: {
                console.log("clicked x: " + mouse.button )
                if (mouse.button == Qt.LeftButton) imageTextLink.text = qsTr("<html><a href='http://qt.io'><></a>")
                Qt.openUrlExternally('http://qt.io')
            }
            onPositionChanged: {
                //if (imageOneMouseArea.containsMouse) {
                //imageOneRectangle.opacity = 0.3 }
                //else {imageOneRectangle.opacity = 0.0 }
                //console.log(" on position changed emited" + mouse.x )
            }
            onContainsMouseChanged: {
                if (imageOneMouseArea.containsMouse) {
                imageOneRectangle.opacity = 0.3 }
                else {imageOneRectangle.opacity = 0.0 }

            }
            //onEntered:
        }





    }

}
