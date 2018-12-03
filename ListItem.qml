import QtQuick 2.11
import QtGraphicalEffects 1.0

Rectangle {
    property var roomModel
    property string label
    property bool selected

    width: parent.width
    height: 50
    color: "transparent"

    Label {
        id: label
        text: parent.label
        anchors.left: parent.left
        anchors.leftMargin: 18
        anchors.verticalCenter: parent.verticalCenter
        color: selected ? "white" : Qt.rgba(152 / 255, 182 / 255, 219 / 255)
    }

    Rectangle {  // Border top
        height: 1
        width: parent.width
        color: "#394f67"
    }

    Rectangle {  // Border bottom
        height: 1
        y: parent.height - 1
        width: parent.width
        color: "#202d3c"
    }
}
