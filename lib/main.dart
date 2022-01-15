
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      home: MyApp()
  ));
}



class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var total = 0;
  var name = ['a','b','v'];
  var like = [0];


addOne(){
  setState(() {
    total++;
  });
}

addName(a){
  setState(() {
    name.add(a);
  });
}

// 자식 위젯이 부모의 위젯을 변경하고 싶을때
  // 1. 변경하고자 하는 함수를 먼저 만든다.



  @override
  build(context) {
    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.menu),
        title:Text(total.toString())),

        body: ListView.builder(
          itemCount:name.length,
          itemBuilder: (context,i){
            return ListTile(
              leading: Text(like[i].toString()),
              title: Text(name[i]),
              trailing:
              ElevatedButton( child: Text('+'),
                onPressed: (){
                  setState(() {
                    like[i]++;
                    });
                  } )
              );
            }
          ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context,builder: (context){
            return DialogUI(addOne:addOne, addName: addName);
            // 부모정보를 자식에게 보내는 방법
            // 1. return DialogUI(작명(state):보낼것(변수));
            // 2. 자식위젯에 등록 this.state
            // 3. 자식위젯 보여줄곳에 등록 state.toString()

            // 자식위젯이 부모의 위젯을 변경할때
            // return DialogUI(addOne:addOne);
          });
        },
      ),
    );
  }
}


class DialogUI extends StatelessWidget {
   DialogUI({Key? key,this.addOne, this.addName}) : super(key: key);
   final addOne; //등록 끝
   final addName;

  var inputData = TextEditingController();
  // 인풋데이터라는 변수에 입력한 내용을 잠깐 저장하고싶을때 사용하는 함수
 // 다음 텍스트 필드에 controler:inputData(변수명)

  @override
  Widget build(BuildContext context) {
    return Dialog(  //모달창의 border.radious
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      child: Container(
          width: 250,
          height: 150,
          padding: EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextField( controller: inputData,),
              TextButton(child:Text('Confirm'),onPressed: (){
                addOne();
                addName(inputData.text);

                Navigator.pop(context);
              },),
              TextButton(child:Text('Cancel'),onPressed: (){
                Navigator.pop(context);
              },)
            ],
          )
      ),
    );
  }
}
