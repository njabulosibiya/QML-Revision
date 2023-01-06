import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "profile"

    padding: 5
    background: Rectangle {
        color: "#6C00FF"
    }

    TopNavBar {
        id: topNavBar
    }

    MainPage {
        width: parent.width
        height: parent.height - topNavBar.height - 5
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label
            text: qsTr("Profile page")
            anchors.centerIn: parent
            font {
                family: "poppins"
                pixelSize: 23
            }
        }

        Button {
            anchors.top: label.bottom
            anchors.horizontalCenter: parent.horizontalCenter

            MouseArea {
                anchors.fill: parent
                onClicked: stackView.push("qrc:/pages/QML/DisplayPages/AboutPage.qml")
            }
        }
    }

}
