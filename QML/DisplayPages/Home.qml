import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    padding: 5
    title: "Home"
    background:  Rectangle {
        color: "#6C00FF"
    }

    TopNavBar {
        id:topNavBar

    }

    MainPage {
        width: parent.width
        height: parent.height - topNavBar.height - 5
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            text: "Home Screen"
            anchors.centerIn: parent
            font {
                family: "poppin"
                pixelSize: 23
            }
        }
    }
}
