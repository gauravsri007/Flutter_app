import 'package:flutter/material.dart';

class MyPractise extends StatefulWidget {
  const MyPractise({super.key});

  @override
  State<MyPractise> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyPractise> {
  @override
  var arr_color = [
    Colors.white,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.amber,
    Colors.purple,
    Colors.orange,
    Colors.grey,
  ];
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("GridView Example",style: TextStyle(
          color: Colors.white
        ),),
      ),
      body:Container(
        color: Colors.black,
        child: 
         GridView.builder(
                itemBuilder:(context, index) {
                  return Container(color: arr_color[index]);
                }, 
                itemCount: arr_color.length,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
                 
    
        // GridView.count(
        //   crossAxisCount: 3,
        //   crossAxisSpacing: 10,
        //   mainAxisSpacing: 10,
        //   children: [
        //     Container(
        //       color: arr_color[0],
        //     ),
        //     Container(
        //       color: arr_color[1],
        //     ),
        //     Container(
        //       color: arr_color[2],
        //     ),
        //     Container(
        //       color: arr_color[3],
        //     ),
        //     Container(
        //       color: arr_color[4],
        //     ),
        //     Container(
        //       color: arr_color[5],
        //     ),
        //     Container(
        //       color: arr_color[6],
        //     ),
        //     Container(
        //       color: arr_color[7],
        //     )
        //   ],
        //   ),
      ),
    );
  }
}