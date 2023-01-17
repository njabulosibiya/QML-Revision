import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    ColumnLayout {
        id: page
        anchors.fill: parent
        spacing: 0

        BlueSquare {
            Layout.fillWidth: true
            Layout.fillHeight: true
            implicitHeight: 500
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.fillWidth: true
            implicitHeight: 500
            Layout.fillHeight: true
            Text {
                text: "width: " + parent.width + "\nheight: " + parent.height
                anchors.centerIn: parent
            }
        }

    }
}
