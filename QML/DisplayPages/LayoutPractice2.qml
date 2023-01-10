import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Window 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    RowLayout {
        id: page
        anchors.fill: parent
        spacing: 5

        BlueSquare {
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitWidth: 800
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height + "\nwindow: " + window.width
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitWidth:  200
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        /*
        RedSquare {
            Layout.fillWidth: true
            Layout.minimumWidth: 150
            Layout.fillHeight: true
            implicitWidth: 20
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        BlueSquare {
            Layout.fillWidth: true
            Layout.minimumWidth: 150
            Layout.fillHeight: true
            implicitWidth: 20
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }*/
    }
}
