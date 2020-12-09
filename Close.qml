import QtQuick 2.12

Item {
    id: rootId
    signal buttonClicked



    Image{
        source: "Image/Close panel ICON.png"
        width: 24
        height: 24
        z: 1
    }

    Rectangle{
        id: close
        width: 24
        height: 24
        color: "white"

        MouseArea{
            id: mouseArea

            anchors.fill: parent

            hoverEnabled: true

            onEntered: {
                close.color = "#696969"
            }
            onExited: {
                close.color = "white"
            }

            onClicked: {
                rootId.buttonClicked()
            }


        }
    }

}
