import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: background
        height: parent.height
        width: parent.width
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "green"
            }
            GradientStop {
                position: 1.0
                color: "lightgreen"
            }
        }//end_gradient
        LayoutItems {}


    }//end_background
}//end_main_program
