import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    ColumnLayout {
        id: root
        anchors.fill: parent
        anchors.margins: 2

        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 200
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }

        GreenSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 700
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }

        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 200
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }
        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 200
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }
    }
}
