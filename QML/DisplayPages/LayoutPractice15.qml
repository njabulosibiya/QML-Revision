import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "5 columns"


    //this is the chosen gridLayout file to explain grid Layout
    //in grid layout you have a choice to specify/explicitly mention the number of rows and columns as seen below.
    /*The grid layout can have components i.e. TextInput, TextEdit, button, columnView etc.. as its child elements,
    even other layout types i.e. ColumnLayout & RowLayout*/
    GridLayout {
        anchors.fill: parent
        //how much spacing within the grid
        rowSpacing: 2
        columnSpacing: 2
        //explicitly saying how many rows and columns the grid has
        rows: 3
        columns: 3

        /*any direct child element, that is, any component, controlled by a layout CANNOT use anchors.
        This does not apply to grandchildren*/
        GreenSquare {
            Layout.row: 0 // the row this element is in
            Layout.column: 0 // the column this element is in
            implicitHeight: 333 // takes 33% of the window height
            implicitWidth: 200 // takes 20% of the window width
            // when resized, element is resized as well
            Layout.fillHeight: true 
            Layout.fillWidth: true
            Text {
                            text: "width: " + parent.width + "\nheight: " + parent.height
                            anchors.centerIn: parent
            }
        }

        GreenSquare {
            Layout.row: 0
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2 // its width takes up to columns
            implicitHeight: 333
            implicitWidth: 800
            Text {
                            text: "width: " + parent.width + "\nheight: " + parent.height
                            anchors.centerIn: parent
                        }
        }

        GreenSquare {
            Layout.row: 1
            Layout.column: 0
            implicitHeight: 333
            implicitWidth: 200
            Layout.fillHeight: true
            Layout.fillWidth: true
            Text {
                            text: "width: " + parent.width + "\nheight: " + parent.height
                            anchors.centerIn: parent
            }
        }

        BlueSquare {
            Layout.row: 1
            Layout.column: 1
            Layout.rowSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 666
            implicitWidth: 400
            Text {
                            text: "width: " + parent.width + "\nheight: " + parent.height
                            anchors.centerIn: parent
            }
        }

        //mainpage is a custom component used as child element of GridLayout
        MainPage {
            Layout.margins: 5 //instead of using anchors.margins we use this as anchors are illegal
            Layout.row: 1
            Layout.column: 2
            Layout.rowSpan: 2// its height spans 2 rows
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 666
            implicitWidth: 400
            //within this container is a grid view that fills mainpage and is allowed to use anchors as it is not controlled
            //a layout.
            GridView {
                anchors.fill: parent
                anchors.margins: 3
                model: 400
                snapMode: GridView.NoSnap
                cellHeight: 42
                cellWidth: 42
                clip: true
                ScrollIndicator.vertical: ScrollIndicator {}
                delegate: Button {
                    id: delegate
                    height: 40
                    width: 40
                    text: index + 1
                }
            }
        }

        GreenSquare {
            Layout.row: 2
            Layout.column: 0
            Layout.fillHeight: true
            Layout.fillWidth: true
            implicitHeight: 333
            implicitWidth: 200
            Text {
                            text: "width: " + parent.width + "\nheight: " + parent.height
                            anchors.centerIn: parent
                        }
        }
    }
}
