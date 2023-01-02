import QtQuick 2.15
import QtQuick.Window 2.15
import "qrc:/QML/"
import "qrc:/components/QML/"

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: background
        anchors.fill: parent
        color: "#F8F4EA"
        anchors.margins: 7

        TopNavBar {
            id: navBar
        }

        MainPage {
            anchors.top: navBar.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            height: Window.height - navBar.height - background.anchors.margins*3
            anchors.topMargin: background.anchors.margins

            KeyPressing {
            }

        }

    }

}//end_main_program
