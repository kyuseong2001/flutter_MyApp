import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text('렌트카 어플'),
        ),


        body: Row(
          children: [
            Image.asset('assets/camera.jpg'),
            Expanded( // Expanded는 위에 이미지와 그옆에 모든 칸을 채우기를 원할때 사용한다.
              child: Container(
                height: 100,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('강낭콩 팝니다.',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red),
                    ),
                    Text('몸에좋아요',
                      style: TextStyle(
                          fontSize:10,
                          color: Colors.black),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.favorite),
                        Text('2'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),

        bottomNavigationBar: BottomAppBar(),
      ),
    );

  }
}

class BottomAppBar extends StatelessWidget {
  const BottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.contact_page),
        ],
      ),
    );

  }
}
