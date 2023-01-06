import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "About"

    Column {
        anchors.centerIn: parent
        spacing: 5
        Label {
            id: label
            text: qsTr("About Page")
            anchors.horizontalCenter: parent.horizontalCenter
            font {
                family: "poppins"
                pixelSize: 23
            }
        }

        Button {
            text: "Back"
            anchors.horizontalCenter: parent.horizontalCenter
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    swipeView.setCurrentIndex(0)
                }
            }
        }
    }

}
