import QtQuick 2.15

Item {

    Rectangle{
        id:highAlert
        color:"black"
        opacity: 0.85
        anchors{fill:parent}
    }

    Rectangle{
        id:highAlertCard
        width: 600; height: 380
        color: "#9B0606"
        anchors.centerIn: highAlert
        scale: 0
        radius: 20
        Image {
            id:highAlertIcon
            source: "qrc:/Images/highAlert.png"
            scale: 0.8
            anchors{
                horizontalCenter: highAlertCard.horizontalCenter


            }
        }
        // Card Animation
        SequentialAnimation {
            id: idAnimation
            PropertyAnimation {
                property: "scale"
                target: highAlertCard
                to: 0.1
                duration : 300
            }

            PropertyAnimation {
                property: "scale"
                target: highAlertCard
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
                target: highAlertIcon
                to: 0.1
                duration : 500
            }

            PropertyAnimation {
                property: "scale"
                target: highAlertIcon
                to: 1
                duration : 500
            }
            running: true
        }




        Text {
            id:highAlertMass

            text: qsTr("Please be careful, you are in danger")
            color: "white"

            font{
                family:fontbold.name
                pixelSize: 32
                bold:true

            }
            anchors{
                horizontalCenter: highAlertCard.horizontalCenter
                bottom: highAlertIcon.bottom
                bottomMargin: -20

            }
        }


        Rectangle{
            id:closeAlertBtn
            width:highAlertCard.width/2
            height: 40
            color:"black"
            radius: 50
            anchors{
                bottom: highAlertCard.bottom
                horizontalCenter: highAlertCard.horizontalCenter
                bottomMargin: 20
            }
            MouseArea{
                anchors.fill: parent
                onClicked:(highAlertCard.opacity==1?highAlertCard.opacity=0 :highAlertCard.opacity=1 )
                          ( highAlert.opacity==0.85?highAlert.opacity=0 :highAlert.opacity=1) ;
            }

            Text {

                text: qsTr("Alert Lock")
                color: "#F9F9F9"

                font{
                    family: fontbold.name
                    bold:true
                    pixelSize: 24


                }
                anchors.centerIn:closeAlertBtn
            }

        }
    }
}
