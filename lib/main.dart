import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('Rent Car'),
        leading : Icon(Icons.menu),
        ),
      body:Container(
        height:150,
        child: Row(
          children: [
            Image.asset('assets/camera.jpg', width: 140),
            Expanded(
              child:Container(
                margin:EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('카메라 팝니다',style:TextStyle(fontWeight: FontWeight.w700)),
                    Text('금호동 3가'),
                    Text('7000원'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.favorite),
                        Text('4')
                      ],
                    )
                  ],
                ),
              )
            )
          ],
        ),
      ),

        bottomNavigationBar: BottomAppBar(
          child:Container(
            margin:EdgeInsets.all(10),
            padding:EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
                        ],
                ),
          ),
        ),

        ),
      );

  }
}
