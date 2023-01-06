import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/pages/QML/DisplayPages/"

ApplicationWindow {
    id: window
    minimumWidth: 640
    minimumHeight: 480
    visible: true
    background:  Rectangle {
        color: "#6C00FF"
    }
    title: "Side-by-Side"

    //implements swipe view
    SwipeView {
        id: swipeView
        anchors.fill: parent//compulsory

        Home {
            id: home
            header: ToolBar {
                Label {
                    anchors.centerIn: parent
                    text: home.title
                    font {
                        family: "poppins"
                        pixelSize: 20
                    }
                }
            }

        }

        ProfilePage {
            id: profile
            header: ToolBar {
                Label {
                    anchors.centerIn: parent
                    text: profile.title
                    font {
                        family: "poppins"
                        pixelSize: 20
                    }
                }
            }

        }

        AboutPage {
            id: about
            header: ToolBar {
                ToolButton {
                    id: backButton
                    icon.source: "qrc:/icons/icons/arrow-left.svg"
                    anchors.left: parent.left
                    anchors.verticalCenter: parent.verticalCenter
                    onClicked: swipeView.setCurrentIndex(0)
                }
            }

            }
    }//end_swipeView

    //creates dots, the number of dots = the number of pages in swipeView
    PageIndicator {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        currentIndex: swipeView.currentIndex//current page
        count: swipeView.count//the number of dots to be displayed
    }
}
