import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var total = 0;
  var like = 0;
  var name = [];

  addName(a) {
    setState(() {
      name.add(a);
    });
  }

  addOne() {
    setState(() {
      total++;
    });
  }

  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text('버튼'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: SizedBox(
                      width: 300,
                      height: 200,
                      child: Column(
                        children: [
                          TextField(
                            controller: inputData,
                          ),
                          TextButton(
                              onPressed: () {
                                addName(inputData.text);
                                Navigator.pop(context);
                              },
                              child: Text('완료')),
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('취소')),
                        ],
                      ),
                    ),
                  );
                });
          }),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('shoppy'),
      ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(name[i]),
            trailing: ElevatedButton(
              child: Text('좋아요'),
              onPressed: () {
                setState(() {
                  like++;
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.phone),
              Icon(Icons.contact_page),
              Icon(Icons.message),
            ],
          ),
        ),
      ),
    );
  }
}
