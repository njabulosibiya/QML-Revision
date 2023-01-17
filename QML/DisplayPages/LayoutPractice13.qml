import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    GridLayout {
        anchors.fill: parent
        rows: 3
        columns: 5
        rowSpacing: 0
        columnSpacing: 0

        BlueSquare {
            Layout.row: 0
            Layout.column: 0
            Layout.columnSpan: 5
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 200
            implicitWidth: 1000
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.row: 1
            Layout.column: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 800
            implicitWidth: 200
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.row: 1
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 800
            implicitWidth: 200
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.row: 1
            Layout.column: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 800
            implicitWidth: 200
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.row: 1
            Layout.column: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 800
            implicitWidth: 200
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.row: 1
            Layout.column: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 800
            implicitWidth: 200
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }
    }
}
