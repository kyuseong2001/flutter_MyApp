import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
      home : MyApp()
  ));
}

var total = 3; // 총 친구 숫자
var name = ['조규성','조연우','조은서'];
var a = 3;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context 부모위젯의 정보를 담고있는 변수 = 족보
    // 부모중에 material app 이 들어있는 context를 입력해야 잘 동작하는 함수이다.
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return DialogUI(state:a);
              // return DialogUI(작명 : 보낼변수);
              // 부모가 자식위젯에 state를 전송하는 방법은 1 보내고, 2 등록하고, 3번은 쓴다.
            });
          },
        ),


        appBar: AppBar(title: Text((total.toString())),),
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
  const DialogUI({Key? key, this.state}) : super(key: key);

  final state;
  // final state2;
  // 두개이상 등록을 원하면  const DialogUI({Key? key, this.state, this.state2 같이 콤마찍고 등록
  // 변수를 var에서 final로 변경하면 에러가 안난다 final 은변수 var와 같다.
  // 그러나 final을 변수로 사용하면 변경이 불가능하다.
  // 부모가 자식에게 보내는 변수는 변경을 잘안하기 때문에 대부분 final 을 많이 사용한다.
  // 위에 부모의 변수를 자식변수에 가져다가 사용을 할때
  // 아래의 자식 위젯에 작명한것을 등록해 줘야 한다.
  //class DialogUI extends StatelessWidget {
  //   const DialogUI({Key? key}) : super(key: key);
  // 폐륜전송 안됨. 불륜 전송 안됨.



  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
          height: 200,
        child: Column(
          children: [
            TextField(),
            TextButton(child: Text(state.toString()),onPressed:(){}, ), // Text('완료')를 state로 변경했다.
            TextButton(onPressed: (){Navigator.pop(context);}, child:Text('취소'),),
          ],
        ),
      ),
    );
  }
}

// 부모가 자식위젯에 state를 전송하는 방법은 1 보내고, 2 등록하고, 3번은 쓴다.