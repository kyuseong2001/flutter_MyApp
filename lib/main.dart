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
      body:Row(
        children: [
          Flexible(child:Container(color:Colors.red),flex:3),
          Flexible(child: Container(color:Colors.green),flex:7)
        ],
      ),

        bottomNavigationBar: BottomAppBar(
          child:Container(
            margin:EdgeInsets.all(20),
            padding:EdgeInsets.fromLTRB(10,10,10,10),
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
