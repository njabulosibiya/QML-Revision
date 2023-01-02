import QtQuick 2.15

Item {
    height: 30
    width: 120

    Rectangle {
        id: inputBackground
        anchors.fill: parent
        color: "transparent"
        radius: 4
        anchors.rightMargin: 5
        border {
            color: "#7B2869"
            width: 1
        }
        TextInput {
            id:textInput
            anchors.verticalCenter: parent.verticalCenter
            width: parent.width
            padding: 5
            text: "input"
            color: "black"
            clip: true
            focus: true

            font {
                family: "poppins"
                pixelSize: 14
            }
        }
    }
}
