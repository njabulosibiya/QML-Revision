import QtQuick 2.15

Item {
    id: root
    width: parent.width
    height: 30
    Row {
        spacing: 5
        anchors.fill: parent
        anchors.margins: 5

        Button {
            id: noFunction
            anchors.verticalCenter: parent.verticalCenter
            text: "default"
        }

        Button {
            id: redButton
            anchors.verticalCenter: parent.verticalCenter
            text: "red"
        }

        Button {
            id: blueButton
            anchors.verticalCenter: parent.verticalCenter
            text: "blue"
        }

        Button {
            id: greenButton
            anchors.verticalCenter: parent.verticalCenter
            text: "green"
        }

        Button {
            id: whiteButton
            anchors.verticalCenter: parent.verticalCenter
            text: "white"
        }
    }
}
