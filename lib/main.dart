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
        appBar: AppBar(title:Text('eunseo market'),
         leading: Icon(Icons.menu),
          ),


        body: Container(
            height:100,
            margin:EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color:Colors.white54,


          ),

          child:Row(

            children: [
              Image.asset('assets/camera.jpg'),
              Expanded(

                child:Container(
                  padding:EdgeInsets.fromLTRB(20,0,0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text('abc 팝니다.',style:TextStyle(fontWeight: FontWeight.w700)),
                      Text('은서 안경을 팝니다.'),
                      Text('200원'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite),
                          Text('2')
                        ],
                      ),
                    ],
                  ),
                )
              )
            ],
          )
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
