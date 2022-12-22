import QtQuick 2.15

Item {
    id: root
    signal clicked
    property alias text: label.text
    Rectangle {
        id: button
        width: 100
        height: 40
        color: "blue"
        radius: 5
        border {
            color: "black"
            width: 1
        }

        Text {
            id: label
            text: qsTr(label.text)
            font {
                family: "poppins"
                pixelSize: 16
            }
            x: (parent.width/2) - width/2
            y: (parent.height/2) - height/2
        }

        MouseArea {
            id: onClick
            width: parent.width
            height: parent.height
            onClicked: root.clicked()
        }

    }
}
