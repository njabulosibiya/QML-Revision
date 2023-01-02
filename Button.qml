import QtQuick 2.15
import QtGraphicalEffects 1.15

Item {
    property alias text: buttonText.text
    height: 30
    width: 80

    Rectangle {
        id: button
        color: "#7B2869"
        anchors.fill: parent
        radius: 4

        Text {
            id: buttonText
            text: qsTr("sample text")
            anchors.centerIn: parent
            color: "white"

            font {
                family: "poppins"
                pixelSize: 12

            }//end_font
        }//end_textArea

        MouseArea {
            id: buttonClick
            anchors.fill: parent
            onClicked: {
                background.color = "red"
            }
        }
    }//end_button

    DropShadow {
        anchors.fill: button
        horizontalOffset: 0
        verticalOffset: 0
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: button
    }

}
