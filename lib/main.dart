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
  var a =1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        floatingActionButton: FloatingActionButton(
          child:Text(a.toString()),
          onPressed:(){
            setState(() {
              a++;
            });
          } ,

        ),
        appBar: AppBar(title:Text('eunseo market'),
         leading: Icon(Icons.menu),
          ),


        body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context,i){
            return ListTile(
              leading: Icon(Icons.account_circle),
              title:Text('홍길동'),
            );
          },
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
      child: Container(
          margin:EdgeInsets.all(20),
          child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page)
            ],
          )
      ),
    );

  }
}
