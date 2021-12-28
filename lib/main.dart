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
            width:40, height: 50,
            decoration: BoxDecoration(
              border: Border.all(color:Colors.blue),
            ),
            margin: EdgeInsets.fromLTRB(0,30,0,0),
            padding:EdgeInsets.all(10),
            child: Text('dddd'),
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