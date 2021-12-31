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


        appBar: AppBar(title: Text('Danggun Market'),
          leading: Icon(Icons.menu)),

        body:Container(
          height:130,
          child:Row(
            children: [
              Image.asset('assets/camera.jpg'),
              Expanded(
                  child:Container(
                    margin:EdgeInsets.all(10),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text('카메라 팝니다.',style:TextStyle(fontWeight:FontWeight.w700, fontSize: 20)),
                        Text('성수동 2가',style: TextStyle(fontSize: 18),),
                        Text('7000원',style:TextStyle(fontWeight:FontWeight.w900,fontSize: 17)),
                        Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.favorite),
                            Text('2'),
                           ],
                          ),
                        ),


                      ],
                    )
                  ))
            ],
          ),
        ),


        bottomNavigationBar: BottomAppBar(
          child:Container(
            margin:EdgeInsets.all(20),
            padding:EdgeInsets.fromLTRB(10, 10,10,10),

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


