import QtQuick 2.0

Item {
    id: root
    property alias textField: text
    property alias mouseArea: mousearea
    property string color: "blue"
    property string hoverColor: "black"
    property string clickedColor: "white"
    property string textColor: "green"
    property string onHoverTextColor: "red"

    Rectangle {
        height: root.height
        width: root.width
        color: root.color
        clip: true

        Text {
            id: text
            anchors.centerIn: parent
            text: qsTr("text")
            color: root.textColor
        }

        MouseArea {
            id: mousearea
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {
                text.color = root.onHoverTextColor
                parent.color = root.hoverColor
            }
            onPressed: parent.color = root.clickedColor
            onReleased: parent.color = root.hoverColor
            onExited: {
                text.color = root.textColor
                parent.color = root.textColor
            }
        }

    }
}
