import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar( title:Text('앱임')
        ),
        body:Align(
          alignment: Alignment.topCenter,
          child: Container(
            width:double.infinity, height: 50,
            // double.infinity 무한히
            decoration: BoxDecoration(
              border: Border.all(color:Colors.blue),
              // 데코레이션 파라미터 종류 공부
            ),
            // 찌끄래기 속성은 데코레이션에서 작업해야한다.
            margin: EdgeInsets.fromLTRB(0,30,0,0),
            padding:EdgeInsets.all(10),
            child: Text('안녕하세요'),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height:50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:const [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)],
            ),
          ),
        ),
      ),
    );
  }
}



// Image.asset('assets/DSC01034.jpg')