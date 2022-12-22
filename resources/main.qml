import QtQuick 2.15
import QtQuick.Window 2.15
import "Button.qml"

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: blackground
        anchors.fill: parent
        color: "green"
        /*
        Text {
            id: label
            text: "gradient rectangle"
            x: rect1.x + (rect1.width/2) - width/2
            y: rect1.y - 25
            font {
                family: "poppins"
                pixelSize: 20
            }
        }

        Rectangle {
            id: rect1
            width: 200
            height: 100
            x: (root.width/2) - width/2
            y: (root.height/2) - height/2
            gradient: Gradient {
                GradientStop {
                    position: 0.0
                    color: "red"
                }
                GradientStop {
                    position: 1.0
                    color: "blue"
                }
            }
            radius: 10

            MouseArea {
                id: changeColor
                width: parent.width
                height: parent.height

            }
        }
        */
        Button {
            id: button

        }

        Text {
            id: statu
            text: qsTr("waiting...")
            x: button.x
            y: button.y + button.height

            font {
                family: "poppins"
                pixelSize: 20
            }
        }
    }


}
