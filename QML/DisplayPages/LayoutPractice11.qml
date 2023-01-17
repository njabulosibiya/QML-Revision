import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    ColumnLayout {
        id: root
        spacing: 5
        anchors.fill: parent

        BlueSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 333
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }

        RedSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 333
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }

        GreenSquare {
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 333
            Text {
                anchors.centerIn: parent
                text: "width: " + parent.width + "\nheight: " + parent.height
            }
        }
    }
}
