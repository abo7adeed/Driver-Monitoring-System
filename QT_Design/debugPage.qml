import QtQuick 2.15

Rectangle{
    id:debugMode
    width:730; height:480;

    gradient: Gradient {
        GradientStop { position: -0.2; color: "#666666" }

        GradientStop { position: 1.0; color: "black" }
    }



    Rectangle{
        id:sideRight
        height: 450
        width:debugMode.width/3
        color: "#000000"

        opacity: 0.5
        radius: 5
        y:10


        Rectangle{
            id:debowsyLevel
            width: sideRight.width-50
            height: 50
            radius: 20
            y:10

            anchors{
                horizontalCenter: sideRight.horizontalCenter
            }
            Rectangle{
                id:col
                width: sideRight.width-200
                height: 50
                color: "#1FEF28"
                radius: 20


            }




        }
        Rectangle{
            id:destrectionlevel
            width: sideRight.width-50
            height: 50
            radius: 20
            x:25
            y:80

            //     anchors{
            //    horizontalCenter: sideRight.horizontalCenter
            //   }


        }

    }




    Text {
        id:debowsytxt
        text: qsTr("7%")
        color :"#ffffff"
        x:115
        y:23

        font.pixelSize: 20
        font.bold: true
    }
    Text {
        id:debowsywrite
        text: qsTr("DROWSY LEVEL")
        color :"#fdd835"
        x:92
        y:48

        font.pixelSize: 12

    }



    Text {
        id:destraction
        text: qsTr("5%")
        color :"#ffffff"
        x:111
        y:94

        font.pixelSize: 20
        font.bold: true
    }
    Text {
        id:destractionwrite
        text: qsTr("DISTRACTION LEVEL")
        color :"#fdd835"
        x:70
        y:120

        font.pixelSize: 12


    }



    Rectangle{
        id:line1
        width: 220
        height:1
        x:10
        y:162
        color: "#757575"
    }



    Text {
        id:eyestuts
        text: qsTr("Eye Status")
        color :"#fdd835"
        x:83
        y:175

        font.pixelSize: 18

    }
    Image {
        id:openeye
        width: 50; height:50
        y:210
        x:40


        source: "qrc:/Images/eyeopen.png"
        anchors{
            horizontalCenter:parent.horizontalCenter

        }
    }
    Image {
        id:closeeye
        width: 50; height:50
        y:210
        x:150


        source: "qrc:/Images/a2.png"
        anchors{
            horizontalCenter:parent.horizontalCenter

        }
    }





    Rectangle{
        id:line2
        width: 220
        height:1
        x:10
        y:270

        color: "#757575"

    }




    Text {
        id:moysestuts
        text: qsTr("Mouse Status")
        color :"#fdd835"
        x:72
        y:280

        font.pixelSize: 18

    }
    Image {
        id:mouse
        width: 70; height:70
        y:300
        x:90


        source: "qrc:/Images/a3.png"
        anchors{
            horizontalCenter:parent.horizontalCenter

        }
    }




    Rectangle{
        id:line3
        width: 220
        height:1
        x:10
        y:370

        color: "#757575"

    }




    Text {
        id:hEADDIR
        text: qsTr("HEAD DIR (PRY)")
        color :"#fdd835"
        x:55
        y:385

        font.pixelSize: 18

    }

    Text {
        id:angels
        text: qsTr("+7°      +20°       +2°")
        color :"#1FEF28"
        x:30
        y:420

        font.pixelSize: 18

    }

    Rectangle{
        id:livecamera
        width: 400
        height: 320

        x:280
        y:30
        color: "black"
        border.color:"white"
        Text {
            id: live
            text: qsTr("Live Camera")
            color: "white"
            font.pixelSize: 15
            anchors.centerIn: parent


        }
    }
    Rectangle{
        id:faceframe
        width: 120
        height: 50

        x:280
        y:380
        color: "black"
        border.color:"white"
        Text {
            id: face
            text: qsTr("Face Frame")
            color: "white"
            font.pixelSize: 13
            anchors.centerIn: parent


        }
    }


    Rectangle{
        id:eyeframe
        width: 120
        height: 50

        x:420
        y:380
        color: "black"
        border.color:"white"
        Text {
            id: eye
            text: qsTr("eye frame")
            color: "white"
            font.pixelSize: 13
            anchors.centerIn: parent


        }
    }

    Rectangle{
        id:mouseframe
        width: 120
        height: 50


        x:560
        y:380
        color: "black"
        border.color:"white"
        Text {
            id: mousee
            text: qsTr("mouse frame")
            color: "white"
            font.pixelSize: 13
            anchors.centerIn: parent


        }
    }

}


