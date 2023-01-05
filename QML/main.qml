import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/pages/QML/DisplayPages/"

ApplicationWindow {
    id: window
    minimumHeight: 460
    minimumWidth: 690
    visible: true
    background: Rectangle {
        color: "#6C00FF"
    }

    header: ToolBar {
        ToolButton {
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            icon.source: "qrc:/icons/icons/bars.svg"
            onClicked: drawer.open()
        }

        Label {
            text: stackView.currentItem.title//takes tile from fileName.qml and sets it as label
            anchors.centerIn: parent
        }

    }

    Drawer {
        id: drawer

        width: window.width/4
        height: window.height

        Column {
            anchors.fill: parent


        }

    }

    StackView {
        id:stackView
        anchors.fill: parent
        initialItem: Home {}
    }
}
