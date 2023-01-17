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
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitWidth: 100
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.fillWidth: true
            implicitWidth: 800
            Layout.fillHeight: true
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        RedSquare {
            Layout.fillWidth: true
            implicitWidth: 100
            Layout.fillHeight: true
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }
    }
}
