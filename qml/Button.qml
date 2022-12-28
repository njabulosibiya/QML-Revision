import QtQuick 2.15

Item {
    id: root
    property alias text: buttonText.text
    property alias color: button.color
    Rectangle {
        id: button
        width: 150
        height: 70
        color: "red"
        radius: 5
        x: 0
        y: 0

        Text {
            id: buttonText
            text: "Button text"
            x: button.width/2 - width/2
            y: button.height/2 - height/2

            font {
                family: "poppins"
                pixelSize: 16
            }
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
            }//end_click_event
        }//end_mouseArea


    }
}
