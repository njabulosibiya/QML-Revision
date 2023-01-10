import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "Basic Layout"
    //As the intention of using a layout is to rearrange its children whenever the layout changes size, the application should make sure that the layout gets resized. In the below snippet the RowLayout ensures that by specifying anchors.fill: parent
    //However, it can also be by other means, such as directly specifying width and height properties. In the same snippet, the GreenSquare
    //has a fixed size of (120, 150) pixels, and the BlueSquare will expand to occupy all the space it gets allocated.
    /*Note: A layout is responsible for its children's geometry. This mean that if you are to specify geometry for a child element. You MUST
    do it through the Layout.something property. You should therefore not specify width, height, x, y or any other properties that
    might influence those properties (such as anchors) on those items. Otherwise there would be a conflict of interest, and the result is undefined.
    This is also the case if the child item is a layout. Therefore, only layouts with no parent layout can have anchors.fill: parent.*/
    RowLayout {
            anchors.fill: parent
            spacing: 5 //all items in the layout will have a spacing of 5 between them
            GreenSquare {
                Layout.preferredHeight: 150
                Layout.preferredWidth: 120
            }
            BlueSquare {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }
        }
}
