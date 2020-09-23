import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

Item {

    ListModel {

        //数据模型
        id:listModel


        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
        ListElement{
            name:"apple"
            number:"n. 苹果; 苹果树"
        }
        ListElement{
            name:"bitter"
            number:"adj. 有苦味的 严寒的, 刺骨的 辛酸的, 引起痛苦的; 难以接受的 充满仇恨的"
        }
    }

    Component {     //代理
        id:delegate

        Item {
            id:wrapper;
            width: listView.width;
            height:40

            ColumnLayout {
                spacing: 2


                anchors.fill: parent

                Text{
                    Layout.leftMargin: 10
                    Layout.rightMargin: 10
                    width: parent.width
                    wrapMode: Text.WordWrap

                    text: name
                    color: 'black'
                }
                Text{
                    Layout.leftMargin: 10
                    Layout.rightMargin: 10
                    width: parent.width
                    wrapMode: Text.WordWrap

                    text: number
                    color: 'gray'
                }
            }
        }
    }

    Component {   //高亮条
        id:highlight
        Rectangle{color:"lightsteelblue";radius:5}
    }

    ScrollView {
        anchors.fill: parent
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        clip: true



        contentWidth: -1 //避免出现横向滚动条

        ListView {
            id: listView

            boundsBehavior: Flickable.StopAtBounds //避免回弹bounce

            model:listModel  //关联数据模型
            delegate:delegate  //关联代理
            highlight:highlight  //关联高亮条
            focus:true  //可以获得焦点，这样就可以响应键盘了
        }
    }
}
