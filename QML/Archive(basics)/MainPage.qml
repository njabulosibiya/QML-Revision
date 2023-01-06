import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15

Rectangle {
    id: root
    width: Window.width - 15
    height: Window.height
    radius: 4
    Rectangle {
        id: mainBG
        anchors.fill: parent
        color: "white"
        radius: 4
    }

    DropShadow {
        anchors.fill: mainBG
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: mainBG
    }
}
