import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var a = 1;
var like = [0, 0, 0];
var name = ['김영숙', '홍길동', '피자집'];

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Shoppy'),
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_rounded),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (c, i) {
          return ListTile(
            leading: Text(like[i].toString()),
            title: Text(name[i]),
            trailing: ElevatedButton(
                child: Text('좋아요'),
                onPressed: () {
                  setState(() {
                    like[i]++;
                  });
                }),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.message),
              Icon(Icons.contact_page),
            ],
          ),
        ),
      ),
    ));
  }
}
