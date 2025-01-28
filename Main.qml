import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    visible: true
    width: 360
    height: 640
    title: qsTr("Nomor 3")

    // Nomor 3a
    Text {
        id: calcTitle
        text: "Fractional Calculator"
        font.pixelSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
    }

    GridLayout {
        id: layout_1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: calcTitle.bottom
        anchors.topMargin: 20
        rows: 3
        columns: 2

        Label{text: "First Number: "}
        TextField{id: txtNum1; text: ""}

        Label{text: "Second Number: "}
        TextField{id: txtNum2; text: ""}

        Label{text: "Result"}
        Label{id: txtRes; text: "~"}
    }

    GridLayout {
        id: layout_2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: layout_1.bottom
        anchors.topMargin: 20
        rows: 1
        columns: 4

        Button {
            id: buttonAdd
            text: "Add"
            onClicked: {
                var num1 = parseFloat(txtNum1.text);
                var num2 = parseFloat(txtNum2.text);
                if(!isNaN(num1) && !isNaN(num2)) {
                    txtRes.text = (num1 + num2).toFixed(2);
                } else {
                    txtRes.text = "Please Input Only Numbers!";
                }
            }
        }

        Button {
            id: buttonSubtract
            text: "Subtract"
            onClicked: {
                var num1 = parseFloat(txtNum1.text);
                var num2 = parseFloat(txtNum2.text);
                if(!isNaN(num1) && !isNaN(num2)) {
                    txtRes.text = (num1 - num2).toFixed(2);
                } else {
                    txtRes.text = "Please Input Only Numbers!";
                }
            }
        }

        Button {
            id: buttonMultiply
            text: "Multiply"
            onClicked: {
                var num1 = parseFloat(txtNum1.text);
                var num2 = parseFloat(txtNum2.text);
                if(!isNaN(num1) && !isNaN(num2)) {
                    txtRes.text = (num1 * num2).toFixed(2);
                } else {
                    txtRes.text = "Please Input Only Numbers!";
                }
            }
        }

        Button {
            id: buttonDivide
            text: "Divide"
            onClicked: {
                var num1 = parseFloat(txtNum1.text);
                var num2 = parseFloat(txtNum2.text);
                if(!isNaN(num1) && !isNaN(num2)) {
                    if(num2 === 0) {
                        txtRes.text = "Error: Division By 0!";
                    } else {
                        txtRes.text = (num1 / num2).toFixed(2);
                    }
                } else {
                    txtRes.text = "Please Input Only Numbers!";
                }
            }
        }
    }

    // Nomor 3b
    Text {
        id: convTitle
        text: "Hex-Dec & Dec-Hex Converter"
        font.pixelSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: layout_2.bottom
        anchors.topMargin: 60
    }

    GridLayout {
        id: layout_3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: convTitle.bottom
        anchors.topMargin: 20
        rows: 2
        columns: 2

        Label{text: "Number: "}
        TextField{id: convNum; text: ""}

        Label{text: "Result: "}
        Label{id: convRes; text: "."}
    }

    GridLayout {
        id: layout_4
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: layout_3.bottom
        anchors.topMargin: 20
        rows: 1
        columns: 2

        Button {
            id: buttonToHex
            text: "To Hex (Input: Dec)"
            onClicked: {
                var num = parseInt(convNum.text, 10);
                if(!isNaN(num)) {
                    convRes.text = num.toString(16).toUpperCase();
                } else {
                    convRes.text = "Please Input Only Decimal Numbers!";
                }
            }
        }

        Button {
            id: buttonToDec
            text: "To Dec (Input: Hex)"
            onClicked: {
                var num = parseInt(convNum.text, 16);
                if(!isNaN(num)) {
                    convRes.text = num.toString(10);
                } else {
                    convRes.text = "Please Input Only Hexadecimal Numbers!";
                }
            }
        }
    }

    Button {
        id: buttonQuit
        text: "Quit"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: layout_4.bottom
        anchors.topMargin: 20
        onClicked: Qt.quit()
    }
}

// 2540124633 - Lie Reubensto
