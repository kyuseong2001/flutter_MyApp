import 'package:flutter/material.dart';

void main(){
  runApp( MaterialApp(
      home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



var total = 0;
var name = ['조규성','조연우'];




addOne(){
  setState(() {
    total++;
  });
}

addName(a){
  setState(() {
    name.add(a);
  });
}




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        floatingActionButton: FloatingActionButton(
          child: Text('Button'),
          onPressed: (){
            showDialog(context: context, builder:(context){
              return DialogUI(addOne:addOne, addName: addName);

            });
          },
        ),







        appBar:AppBar(
          leading: Icon(Icons.menu),
          title: Text(total.toString()),
          actions: [Icon(Icons.search_rounded)],
        ),


        body:ListView.builder(
          itemCount: name.length,
          itemBuilder: (context,i){
            return ListTile(

              leading: Icon(Icons.account_circle),
              title:Text(name[i]),
              trailing:ElevatedButton(child: Text('좋아요'),onPressed: (){
                addOne();

              },),
            );
          },

        ),

    );
  }}


  class DialogUI extends StatefulWidget {
    DialogUI({Key? key,this.addOne,this.addName}) : super(key: key);
    final addOne;
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
          height:200,
          child: Column(
            children: [
              TextField(controller:inputData,),
              TextButton(onPressed: (){
                widget.addOne();
                widget.addName(inputData.text);

              }, child: Text('완료')),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('취소')),

            ],
          ),
        ),
      );
    }
}

