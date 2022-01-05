import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}




class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;
  var name = ['김영숙','피자집','홍길동'];
  var like = [0,0,0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child:Text(a.toString()) ,  //feb
          onPressed: (){
            setState(() {
              //스테이트를 변경하는 방법으로 스테이트 풀위젯으로 변경한 후 set setstate 함수를 써서 변경가능
              a++;
            });
          },
          // 버튼눌렀을때 코드실행해주는 코드
          // 잠깐 데이터를 저장할 때 변수나 스테이트를 사용해서 자료저장한다.
          // 재 랜더링이 안될때는 스테이트 풀 위젯으로 변경해야한다.
        ),
        appBar: AppBar(),
        body:ListView.builder(
        itemCount: 3,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Text(like[i].toString()),
            title: Text(name[i]),
            trailing:ElevatedButton( child: Text('좋아요'), onPressed: (){
              setState(() {
                like[i]++;
              });

            } ),
          );
       },
      ),
    ));
  }
}
