import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Window 2.2

Window {
    id: mainWindow
    title: qsTr("Playground")
    minimumWidth: 200
    minimumHeight: 600
    width: 1024
    height: 768
    visible: true
    color: '#1E2A38'

    Sidebar {
        id: sidebar
        width: parent.width
        height: parent.height - ftr.height
        anchors.top: parent.top
    }

    Footer {
        id: ftr
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
