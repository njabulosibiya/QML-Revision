import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    id: root
    property int mainMargin: 5

    MainPage {
        anchors.fill: parent
        anchors.margins: mainMargin

        //A container for the basic model
        MainPage {
            id: container1
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.margins: mainMargin
            width: 120

            //label for the container
            Text {
                id: containerLabel
                text: "basic model"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: mainMargin
                anchors.bottomMargin: mainMargin
                font {
                    family: "poppins"
                    pixelSize: 10
                }
            }//end_text

            //creates column to format how data will be presented, becuase of that, the column is our view
            Column {
                anchors.centerIn: parent
                spacing: 5
                clip: true

                //using repeater to iterate no# of delegates
                Repeater {
                    /*since each element has >1 property we use a list model when each list
                    element can have as many properties as it can*/
                    model: ListModel {
                        ListElement {
                            name: "Mercury"
                            surfaceColor: "graay"
                        }
                        ListElement {
                            name: "Venus"
                            surfaceColor: "yellow"
                        }
                        ListElement {
                            name: "Earth"
                            surfaceColor: "blue"
                        }
                        ListElement {
                            name: "Mars"
                            surfaceColor: "orange"
                        }
                        ListElement {
                            name: "Jupiter"
                            surfaceColor: "orange"
                        }
                        ListElement {
                            name: "Saturn"
                            surfaceColor: "yellow"
                        }
                        ListElement {
                            name: "Uranus"
                            surfaceColor: "light blue"
                        }
                        ListElement {
                            name: "Neptune"
                            surfaceColor: "light blue"
                        }
                    }

                    /*The button component shall act as our delegate (how our data is displayed) where how our
                      data is arranged is the view*/
                    delegate: Button{
                        text: " "// sets default text to empty
                        //creates new text that'll be anchored to the color
                        Text {
                            text: name
                            color: "white"
                            font {
                                family: "poppins"
                                pixelSize: 14
                            }
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: color.right
                            leftPadding: 5
                        }

                        width: 100
                        //creates color delegate which will display the surfaceColor property of the list elements
                        BlueSquare {
                            id: color
                            radius: 3
                            height: parent.height - 4
                            width: height
                            anchors.left: parent.left
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.leftMargin: 2
                            anchors.rightMargin: mainMargin
                            color: surfaceColor
                        }
                    }
                }
            }

        }

        //container for ListView model
        MainPage {
            id: container2
            //backgroundColor: "#6C00FF"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.left: container1.right
            anchors.margins: 5
            width: container1.width
            //Label for container
            Text {
                id: container2Label
                text: qsTr("Dynamic View\n List view - vertical")
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter//aligns text to the center
                topPadding: 2
                font {
                    family: "poppins"
                    pixelSize: 10
                }
            }//end_text

            /*creates view(how data is presnted/organized) for our model
            /listView automatically makes us have to scroll if model > displayed data*/
            ListView {
                id: listView
                anchors.margins: 5
                anchors.top: container2Label.bottom
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                clip: true
                model: 100
                spacing: 5
                /*The snapMode: property determines how the view scrolling will settle following a drag or
                flick. The possible values are*/
                //ListView.SnapToItem - the view settles with an item aligned with the start of the view
                //default is ListView.NoSnap
                snapMode: ListView.NoSnap
                /*The behaviour at the end of the view is controlled by the boundsBehavior property
                  Flickable.StopAtBounds - Where the view will never move outside its boundaries*/
                //default is Flickable.DragAndOvershootBounds
                boundsBehavior: Flickable.DragAndOvershootBounds

                /*just another way of doing delegates. As it is different from method
                of container1*/
                delegate: numberDelegate
                Component {
                    id: numberDelegate
                    Button {
                        width: listView.width
                        text: index
                    }
                }

            }

        }//end_container2

        //container for horizontal listView model
        MainPage {
            id: container2Horizontal
            anchors.margins: mainMargin
            anchors.top: parent.top
            anchors.left: container2.right
            anchors.right: parent.right
            height: 60

            //label for container
            Text {
                id: listLabel
                text: qsTr("List View\nHorizontal")
                padding: mainMargin
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                width: 60
            }

            //creates horizontal list that has keyboard navigation and highlighting.
            ListView {
                id: horiList
                anchors.left: listLabel.right
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.margins: mainMargin
                clip: true
                orientation: ListView.Horizontal//makes listView horizontal
                /*Changes the layout direction/flow to either flow from the left to the right
                  or vice versa can be set as follows:
                  layoutDirection: "RightToLeft"
                  layoutDirection: Qt.RighttoLeft*/
                layoutDirection: Qt.LeftToRight
                snapMode: ListView.NoSnap
                spacing: mainMargin

                model: 100
                delegate: horizontalDelegate
                ScrollIndicator.horizontal: ScrollIndicator {}
            }

            Component {
                id: horizontalDelegate
                BlueSquare {
                    id: delegate
                    width: 50
                    height: 50
                    radius: 3
                    color: "#7B2869"
                    Text {
                        id: delegatData
                        text: index
                        color: "white"
                        anchors.centerIn: parent
                        font {
                            family: "poppins"
                            pixelSize: 16
                        }
                    }
                }//end_delegate
            }//end_horizontalDelegate
        }//end_container2Horizontal

        //Our highlighted list view
        //not working properly, it should be focused and KeyNavigation possible
        MainPage {
            id: highlightedListView
            anchors.left: container2.right
            anchors.top: container2Horizontal.bottom
            anchors.bottom: parent.bottom
            anchors.margins: mainMargin
            width: container1.width

            Text {
                id: highlightedListViewLabel
                text: qsTr("List View\n(highlighted)")
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                padding: mainMargin
            }

            ListView {
                id: listViewHighlighted
                anchors.top: highlightedListViewLabel.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.margins: mainMargin
                spacing: mainMargin
                clip: true

                model: 100
                delegate: highlightedListDelegate


                //used to highlight/show which component is selected
                highlight: highlightedListHighlighter
                focus: true
            }

            Component {
                id: highlightedListHighlighter
                Rectangle {
                    width: listViewHighlighted.currentItem.width
                    height: listViewHighlighted.currentItem.height
                    color: "green"
                }
            }

            Component {
                id: highlightedListDelegate
                Item {
                    id: delegate
                    width: listViewHighlighted.width
                    height: 30
                    Text {
                        anchors.centerIn: parent
                        text:  index
                    }
                }
            }

        }

        //ListView with header and footer
        MainPage {
            id: headerFooterListContainer
            anchors.left: highlightedListView.right
            anchors.top: container2Horizontal.bottom
            anchors.bottom: parent.bottom
            anchors.margins: mainMargin
            width: container1.width

            ListView {
                id: headerFooterList
                anchors.fill: parent
                spacing: mainMargin
                anchors.margins: mainMargin
                clip: true
                //we create a header and footer simply by doing this, although further formatting is required
                //headers and footers do not respect spacing property of a ListView, therefore you must
                //define the margins for the for headers and footers
                header: header
                //defines footer:
                footer: footer

                model: 100
                delegate: Button {
                    width: headerFooterList.width
                    text: index
                }

                ScrollIndicator.vertical: ScrollIndicator{}
            }//end_headerFooterList

            Component {
                id: header
                Button {
                    text: qsTr("HEADER")
                    anchors.margins: mainMargin
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }//end_headerComponent

            Component {
                id: footer
                Button {
                    text: qsTr("FOOTER")
                    anchors.topMargin: 5
                }
            }//end_footerComponent
        }

        //Container for GridView
        MainPage {
            id: gridViewContainer
            anchors.left: headerFooterListContainer.right
            anchors.right: parent.right
            anchors.top: container2Horizontal.bottom
            anchors.bottom: parent.bottom
            anchors.margins: mainMargin

            GridView {
                id: gridView
                anchors.fill: parent
                anchors.margins: mainMargin
                clip: true
                model: 400
                delegate:  gridDelegate
                //gridView does not have spacing property. Instead you define the cell width & height
                //below, our delegate is 60x60, therefore by making our cellWidth & cellHeight 64x64
                //we're making space for delegate but the extra 4 is the spacing between the cells.
                cellHeight: 64
                cellWidth: 64
                //GridViewsupports all most properties ListView supports such as the following:
                snapMode: GridView.SnapToRow
                //controls how cells are placed therefore affecting the direction inwhich you can scroll
                //(top-to-bottom, left-to-right)
                flow: GridView.LeftToRight//not sure how flow and layoutDirection work together
                layoutDirection: "LeftToRight"
                //creates scroll scvroll indicator
                ScrollIndicator.vertical: ScrollIndicator {}
                //any kind of view can have a header and/or footer
                header: gridHeader
                //the footer appears to have formatting, that is, it's top margin is the same size as those of the cells
                //this is because of the reasons mentioned in cellHeight/width explaination. The delegate is automaticatlly
                //anchored to the top and left of the cell, therefore the extra 4 is at its bottom and its right.
                footer: gridFooter
            }

            Component {
                id: gridDelegate
                BlueSquare{
                    color: "#7B2869"
                    width: 60
                    height: 60
                    radius: 3
                    Text {
                        text: index
                        color: "white"
                        anchors.centerIn: parent
                        font {
                            family: "poppins"
                            pixelSize: 16
                        }
                    }
                }//end_BlueSquare
            }//end_gridDelegate

            Component {
                id: gridHeader
                Button {
                    text: qsTr("HEADER")
                    width: gridView.width
                }
            }

            Component {
                id: gridFooter
                Button {
                    text: qsTr("FOOTER")
                    width: gridView.width
                }
            }
        }
    }

}
