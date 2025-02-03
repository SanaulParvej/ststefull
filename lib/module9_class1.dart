import 'package:flutter/material.dart';

class Module9_class1 extends StatelessWidget {
  const Module9_class1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("This is mediaQuery"),
      ),
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
          ),
          child: Center(
            child: Text(
              "Responsive Design",
              style: TextStyle(
                  fontSize: screenWidth*0.1, color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class WarpExample extends StatelessWidget {
   WarpExample({super.key});

  final List<String> categories = [
    'milk','vagetable','meat','fish','dairy','snacks','drinks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Warp"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Wrap(
              children:
                categories.map((category){
                  return Chip(label: Text(category),
                    backgroundColor: Colors.green,
                  );
                }).toList()

            )
          ],
        ),
      ),
    );
  }
}
class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder"),
      ),
      body: LayoutBuilder(
          builder: (context,con){
            if(con.maxWidth>600)
              return Center(
                child: Text("This is Tablate layout"),
              );
            else
              return Center(
                child: Text("This is mobile layout"),
              );
          }

      ),
    );
  }
}


