import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        x: parent.width/2 - width
        y: parent.height/2
        width: 100
        height: 100
        color: tapHandlerone.pressed ? "red" : "blue"
        radius: 50
        border.color: "black"
        border.width: 3
        gradient: Gradient{
            GradientStop { position: 0.0; color: "red"}
            GradientStop { position: 1.0; color: "blue"}
        }

        TapHandler {
            id: tapHandlerone
        }

    }
    Rectangle {
        x: parent.width/2 + 50
        y: parent.height/2
        width: 100
        height: 100
        color: "red"
        TapHandler.pressed: parent.color = "blue"

        TapHandler { //new item
            id: tapHandlertwo
        }
    }

}
