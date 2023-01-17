import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/components/QML/Archive(basics)/"
import "qrc:/pages/QML/DisplayPages/"

Page {
    title: "Basic Layout"


    SwipeView {
        id: swipeView
        anchors.fill: parent
        LayoutExample1 {}
        LayoutExample2 {}
        LayoutPractice1 {}
        LayoutPractice2 {}
        LayoutPractice3 {}
        LayoutPractice4 {}
        LayoutPractice5 {}
        LayoutPractice6 {}
        LayoutPractice7 {}
        LayoutPractice8 {}
        LayoutPractice9 {}
        LayoutPractice10 {}
        LayoutPractice11 {}
        LayoutPractice12 {}
        LayoutPractice13 {}
        LayoutPractice14 {}
        LayoutPractice15 {}
        LayoutPractice16 {}


    }

    PageIndicator {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 5

        currentIndex: swipeView.currentIndex
        count: swipeView.count
    }
}
