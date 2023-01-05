import QtQuick 2.15

Rectangle {
    id: root
    color: Qt.lighter("red")
    anchors.fill: parent
    property int margin: 10
    Grid {
        id: baseGrid
        rows: 2
        columns: 3
        spacing: 5
        BlueSquare {
            RedSquare {
                anchors.margins: margin
                anchors.fill: parent
            }
        }
        BlueSquare {
            GreenSquare {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.margins: margin
            }
        }
        BlueSquare {
            GreenSquare {
                anchors.left: parent.right
                anchors.top: parent.top
            }
        }
        BlueSquare {
            GreenSquare {
                height: width*(1/3)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.margins: margin
            }
            GreenSquare {
                height: width*(1/3)
                anchors.centerIn: parent
            }
        }
        BlueSquare {
            GreenSquare {
                anchors.centerIn: parent
            }
        }
        BlueSquare {
            GreenSquare {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.margins: margin
            }
        }
    }
}
