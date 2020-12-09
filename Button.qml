import QtQuick 2.12

Item {
    id: rootId

    property alias setText: customText.text
    property alias setTextx: customText.x
    property alias setTexty: customText.y
    property alias setPointSize: customText.font.pixelSize
    property alias setFontFamily: customText.font.family
    property alias setColor: customText.color
    property alias setBold: customText.font.bold

    signal buttonClicked

    Item{
        Image{
            id: image
            source: "Image/Button.png"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            MouseArea{
                anchors.fill: parent

                onClicked: {
                    rootId.buttonClicked()
                }
            }
        }

        Text{
            id: customText
            text: ;
            color: "white"
            font.pixelSize: 15
            font.family: "B Nazanin"
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            x: ;
            y: ;
        }


    }



}
