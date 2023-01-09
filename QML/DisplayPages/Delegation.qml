import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.XmlListModel 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    id: root
    property int mainMargin: 5

    MainPage {
        id: container
        anchors.fill: parent
        anchors.margins: mainMargin

        /*when it comes to using models and views, the delegate plazys a huge role in
        creating a look. As each item in a model is visualized through a delegate, what is
        actually visible to the user are the delegates.*/
        /*Each delegate gets a number of attached properties from the model and view. frm model
          the properties convey the data for each item to the delegate. frm view properties convey
          state info(e.g. lIstView, how delegate are shown) most common properties from view are
          ListView.isCurrentItem & ListView.view*/
        //through access to the view it is possible to create generl, reusable delegates that adapt
        //to the size and nature of the view in which they are contained
        //keyNavigation still does not work, list cannot be navigated.
        MainPage {
            id: delegateContainer
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.margins: mainMargin
            backgroundColor: "#7B2869"
            width: 120

            ListView {
                id:listView
                anchors.fill: parent
                anchors.margins: mainMargin
                model: 100
                delegate: delegate
                spacing: mainMargin
                clip: true
                focus: true
                ScrollIndicator.vertical: ScrollIndicator{}
            }

            Component {
                id: delegate

                Rectangle {
                    width: ListView.view.width
                    height: 40
                    color: ListView.isCurrentItem? "#7B2869" : "#6C00FF"
                    border.color: Qt.lighter(color, 1.1)
                    Text {
                        anchors.centerIn: parent
                        text: index
                        font {
                            family: "poppins"
                            pixelSize: 18
                        }
                    }
                }
            }

        }

        //Container for View with XML Model
        //https not working
        MainPage {
            id: tableViewContainer
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: 300
            anchors.left: delegateContainer.right
            anchors.margins: mainMargin

            ListView {
                id: xmlListView
                anchors.fill: parent
                anchors.margins: mainMargin
                model: xml
                spacing: mainMargin
                delegate: xmlDelegate

            }

            Component {
                id: xmlDelegate
                BlueSquare {
                    color: "#7B2869"
                    width: xmlListView.width
                    height: 100
                    radius: 3
                    Text {
                        id: label
                        text: title
                        font {
                            family: "poppins"
                            pixelSize: 14
                        }
                        color: "white"
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.top: parent.top
                        anchors.margins: mainMargin
                    }

                    Image {
                        id: image
                        width: xmlListView.width
                        anchors.top: label.bottom
                        anchors.bottom: parent.bottom
                        source: imageSource
                    }

                }
            }//end_xmlDelegate

            XmlListModel {
                id: xml

                source: "https://www.nasa.gov/rss/dyn/image_of_the_day.rss"
                query: "/rss/channel/item"

                XmlRole {
                    name: "title"
                    query: "title/string()"
                }
                XmlRole {
                    name: "imageSource"
                    query: "enclosure/string(@url)"
                }
            }

        }
    }
}
