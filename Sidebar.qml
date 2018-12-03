import QtQuick 2.11

Rectangle {
    color: "#2d3f55"
    clip: true

    ListModel {
        id: roomList
        ListElement {
            name: "Item 1"
        }
        ListElement {
            name: "Item 2"
        }
        ListElement {
            name: "Item 3"
        }
    }

    ListView {
        id: sidebarList
        anchors.fill: parent
        model: roomList
        delegate: ListItem {
            roomModel: model
            label: name
            selected: ListView.isCurrentItem
            MouseArea {
                anchors.fill: parent
            }
        }
    }
}
