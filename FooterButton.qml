import QtQuick 2.11
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0

Rectangle {
    property string pageSource
    property string iconSource

    width: 72
    height: 72
    color: '#02020401'
    Text {
        id: iconImage
        text: "Foobar"
        anchors.centerIn: parent
    }

    DropShadow {
        anchors.centerIn: parent
        width: iconImage.width
        height: iconImage.height
        horizontalOffset: 0
        verticalOffset: 2
        color: "#80020402"
        source: iconImage
    }

    LinearGradient {
        anchors.centerIn: parent
        start: Qt.point(0, 0)
        end: Qt.point(0, parent.height)
        source: iconImage
        width: iconImage.width
        height: iconImage.height
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#F6F6F6" }
            GradientStop { position: 1.0; color: "#A2A2A2" }
        }
    }

    MouseArea {
        anchors.fill: parent
        cursorShape: Qt.PointingHandCursor
    }
}
