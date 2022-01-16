import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  getPermission() async {
    var status = await Permission.contacts.status;
    if (status.isGranted) {
      print('허락됨');
    } else if (status.isDenied) {
      print('거절됨');
      Permission.contacts.request();  // 팝업창 띄워주세요
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPermission();
  }
  // 이 위젯이 처음 로드가될때 실행해주세요


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Text('버튼'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return DialogUI(addName: addName,);
                });
          }),
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('shoppy'),
        actions: [
          IconButton(onPressed: (){getPermission();}, icon: Icon(Icons.contacts),),],
      ),








      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(name[i]),
            trailing: ElevatedButton(
              child: Text('삭제'),
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

class DialogUI extends StatefulWidget {
  const DialogUI({Key? key, this.addName}) : super(key: key);

  final addName;

  @override
  State<DialogUI> createState() => _DialogUIState();
}

class _DialogUIState extends State<DialogUI> {
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                  widget.addName(inputData.text);
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
  }
}
