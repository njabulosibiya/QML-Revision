import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 5

        RedSquare {
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitHeight: 250
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 250
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitHeight: 250
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 250
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }
    }
}
