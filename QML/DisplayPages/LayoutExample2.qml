import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import "qrc:/components/QML/Archive(basics)/"

Page {
    title: "Basic Layout"

    /*SIZE CONSTRAINTS:
    Since an item can be resized by its layout, the layout needs to know the minimum, preferred, and maximum sizes of all items where
    Layout.fillWidth or Layout.fillHeight is set to true.
    For instance, the following will produce a layout with two rectangles lying side-by-side that stretches horizontally. The BlueSquare can be
    resized from 50x150 to 300x150, and the GreenSquare can be resized from 100x100 to ∞x100
    */
    RowLayout {
            anchors.fill: parent
            spacing: 5
            //Combining each item's constraints will give these implicit constraints to the layout element:
            //Thus, the layout(RowLayout) cannot be narrower than 156 or be taller or shorter than 150 without breaking any of the constraints of its child items.
            // these implicit constraints apply to the layout itself
            //in this case the implicit constraints (width) are blueSquare.width + greenSquare.width + spacing
            //in this case the implicit constraints (height) are blueSquare.height + greenSquare.height

            //README!!!!!!!!!!!!!!!!
            //In row or columnLayout. IF you want to specify the size of each element, you do it out of 1000
            //example: if you have 3 rectangles (A, B & C) in a rowlayout & A is half the window size, whilst B & C
            //are half of the remainin half. then the implicitWidths are as follows
            //A = implicitWidth: 500, B = implicitWidth: 250, c  = implicitWidth: 250
            //you do not have to know the size of the window, implicit means "suggested though not directly expressed" which
            //means that its size is implied or inferred rather than directly expressed.
            //threfore it is implied that A is 50% of the screen

            //For each item, the effective preferred size may come from one of several candidate properties. For determining the
            //effective preferred size, it will query these candidate properties in the following order, and use the first
            //candidate with a valid width or height the candidates are in the squares
            BlueSquare {
                id: blueSquare
                Layout.fillWidth: true//removing fills makes the component(BlueSquare) unsizable(wont shrink or enlarge)
                Layout.minimumWidth: 50
                //These properties are supposed to be modified by the application if the default implicit size does not give the
                //optimal arrangement.
                Layout.preferredWidth: 100
                Layout.maximumWidth: 300
                Layout.minimumHeight: 150
                //These properties are supposed to be supplied by each item to give a meaningful ideal size, for example the size
                //needed to display all the contents of a Text type. An implicit width or height of 0 is interpreted as invalid.
                //Layout.implicitHeight/width: 123
                Text {
                    text: "width: " + parent.width + "\nheight: " + parent.height
                    anchors.centerIn: parent
                }
            }
            GreenSquare {
                id: greenSquare
                Layout.fillWidth: true
                Layout.minimumWidth: 100
                Layout.preferredWidth: 200
                Layout.preferredHeight: 100
                Text {
                    text: "width: " + parent.width + "\nheight: " + parent.height
                    anchors.centerIn: parent
                }
            }
    }
}
