import 'package:flutter/material.dart';

class ModuleNine extends StatelessWidget {
  const ModuleNine({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module9"),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.amber,
              ),
            ),
          ),
         Center(
           child: Stack(
             children: [
               Container(
                 width: 300,
                 height: 300,
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Container(
                 width: 150,
                 height: 150,
                 decoration: BoxDecoration(
                   color: Colors.green,
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
               Positioned(
                 top: 50,
                 left: 50,
                 child: Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.blue,
                     borderRadius: BorderRadius.circular(10),
                   ),
                 ),
               )
             ],
           ),
         )
        ],
      ),
    );
  }
}
