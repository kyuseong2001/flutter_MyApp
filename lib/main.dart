import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      home : MyApp()
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var name = ['조규성','조연우','조은서'];
  var a = 3;
  var total =3;


  addOne(){
    setState(() {
      total++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // context 부모위젯의 정보를 담고있는 변수 = 족보
    // 부모중에 material app 이 들어있는 context를 입력해야 잘 동작하는 함수이다.
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return DialogUI(addOne : addOne);   // 부모정보를 자식state에 전송하는법
            // 1. 작명:보내려는 변수
          });
        },
      ),


      appBar: AppBar(title:Text(total.toString())),
      body:ListView.builder(
          itemCount: 3,
          itemBuilder:(c,i){
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(name[i]),
            );
          }),
    );

  }
}


class DialogUI extends StatelessWidget {
   DialogUI({Key? key,this.addOne}) : super(key: key);

  final addOne;

  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child:SizedBox(
        height:200,
        width: 300,
        child: Column(
          children: [
            TextField(controller:inputData,), // 인픗데이터에는 변수로저장이 된다.
            TextButton(child: Text('완료'),onPressed:(){addOne();}, ),
            TextButton(child: Text('취소'),
                onPressed:(){Navigator.pop(context); })
          ],
        ),
      )
    );
  }
}
