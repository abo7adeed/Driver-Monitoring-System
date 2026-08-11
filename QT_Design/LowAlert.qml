import QtQuick 2.15

Item {

    Rectangle{
        id:lowAlert
        color:"black"
        opacity: 0.85
        anchors{fill:parent }
    }


    Rectangle{
        id:lowAlertCard
        width: 600; height: 380
        color: "#A47400"
        anchors.centerIn: lowAlert
        radius: 20
        scale: 0
        Image {
            id:lowAlertIcon
            source: "qrc:/Images/lowAlert.png"
            scale: 0.8
            anchors{
                horizontalCenter: lowAlertCard.horizontalCenter


            }
        }

        // Card Animation
        SequentialAnimation {
            id: idAnimation
            PropertyAnimation {
                property: "scale"
                target: lowAlertCard
                to: 0.1
                duration : 300
            }

            PropertyAnimation {
                property: "scale"
                target: lowAlertCard
                to: 1
                duration : 500
            }
            running: true
        }
        // Icon Animation
        SequentialAnimation {
            id: aAnimation
            loops: 5
            PropertyAnimation {
                property: "scale"
                target: lowAlertIcon
                to: 0.1
                duration : 500
            }

            PropertyAnimation {
                property: "scale"
                target: lowAlertIcon
                to: 1
                duration : 500
            }
            running: true
        }



        Text {
            id:lowAlertMass

            text: qsTr("please stay focused")
            color: "white"

            font{
                family:fontbold.name
                pixelSize: 36
                bold:true

            }
            anchors{
                horizontalCenter: lowAlertCard.horizontalCenter
                bottom: lowAlertIcon.bottom
                bottomMargin: -20

            }
        }


    }
}
