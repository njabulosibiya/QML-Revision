import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 5

        RowLayout {
            implicitHeight: 100
            implicitWidth: 1000
            Layout.fillHeight: true
            Layout.fillWidth: true
            InputElement {
                Layout.fillWidth: true
            }

            Button {
            }
        }//end_rowLayout

        GridLayout {
            rows: 4
            columns: 2
            InputElement {
                Layout.row: 0
                Layout.column: 0
            }

            InputElement {
                Layout.row: 1
                Layout.column: 0
            }

            InputElement {
                Layout.row: 2
                Layout.column: 0
            }

            TextEditV1 {
                Layout.row: 0
                Layout.column: 1
                Layout.rowSpan: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            TextEditV1 {
                Layout.row: 3
                Layout.column: 0
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}
