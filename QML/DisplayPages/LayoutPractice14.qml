import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    GridLayout {
        anchors.fill: parent
        rowSpacing: 0
        columnSpacing: 0

        RowLayout {
            Layout.row: 0
            Layout.column: 0

            BlueSquare {
                implicitHeight: 200
                implicitWidth: 800
                Text {
                    text: "width: " + parent.width + "\nheight: " + parent.height
                    anchors.centerIn: parent
                }
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            GreenSquare {
                implicitHeight: 200
                implicitWidth: 200
                Text {
                    text: "width: " + parent.width + "\nheight: " + parent.height
                    anchors.centerIn: parent
                }
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }

        RowLayout {
            Layout.row: 1
            Layout.column: 0

            BlueSquare {
                implicitHeight: 800
                implicitWidth: 800
                Text {
                    text: "width: " + parent.width + "\nheight: " + parent.height
                    anchors.centerIn: parent
                }
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            GreenSquare {
                implicitHeight: 800
                implicitWidth: 200
                Text {
                    text: "width: " + parent.width + "\nheight: " + parent.height
                    anchors.centerIn: parent
                }
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }

}
