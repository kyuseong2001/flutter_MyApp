import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(
            child: Text('button'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Column(
                      children: [
                        Container(
                          child: TextField(
                            style: TextStyle(fontSize: 15, color: Colors.black38),
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(hintText: '입력해 주세요'),
                          ),
                        ),
                        ElevatedButton(
                          child: Text('Cancel'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  );
                },
              );
            },
          );
        }),
        appBar: AppBar(
          title: Text('Shoppy'),
        ),
      ),
    );
  }
}
