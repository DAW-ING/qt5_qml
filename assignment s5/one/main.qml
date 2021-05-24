import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml.Models 2.1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    Rectangle{
        id: keybord
        width: 170
        height: 225
        anchors.centerIn: parent
        clip: true

        Flow {
            id: myflow
            anchors.fill: parent
            spacing: 5
            anchors.margins: 5
            flow: Flow.LeftToRight

            MyButton {
                textField.text: "1"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "2"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "3"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "4"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "5"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "6"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "7"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "8"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            MyButton {
                textField.text: "9"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
            Item {
                width: 50
                height: 50
            }
            MyButton {
                textField.text: "0"
                width: 50
                height: 50
                mouseArea.onPressed: labelstext.text = textField.text
            }
        }
    }

    Rectangle {
        id: label
        width: keybord.width
        height: 50
        anchors.bottom: keybord.top
        anchors.left: keybord.left

        Text {
            id: labelstext
            anchors.fill: parent
            text: "Welcome"
            font.bold: true
            font.pointSize: 24
            color: "black"
        }

    }
}
