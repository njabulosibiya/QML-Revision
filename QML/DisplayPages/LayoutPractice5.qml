import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    RowLayout {
        id: page
        anchors.fill: parent

        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitWidth: 330
            Layout.minimumWidth: 220
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        RedSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitWidth: 330
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitWidth: 330
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }
    }
}
