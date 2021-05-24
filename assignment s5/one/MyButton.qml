import QtQuick 2.0

Item {
    id: root
    property alias textField: text
    property alias mouseArea: mousearea
    property string color: "blue"
    property string hoverColor: "darkBlue"
    property string clickedColor: "gray"
    property string textColor: "magenta"
    property string onHoverTextColor: "cyan"

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
            font.bold: true
            font.pointSize: 14
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
            onReleased: {
                parent.color = root.color
            }
            onExited: {
                text.color = root.textColor
                parent.color = root.color
            }
        }

    }
}
