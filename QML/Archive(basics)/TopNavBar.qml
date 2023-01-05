import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15

Rectangle {
    id: navBar
    width: parent.width
    anchors.leftMargin: 10
    height: 40
    radius: 8
    Rectangle {
        id: shadowNavBar
        color: "white"
        anchors.fill: parent
        radius: 8

        RowPositioning {
            id: buttonRow
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
        }

        InputElement {
            id: input
            anchors.right: parent.right
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    DropShadow {
        anchors.fill: shadowNavBar
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: shadowNavBar
    }
}
