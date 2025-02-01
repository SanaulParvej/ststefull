import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;
  incrementCounter(){
    setState(() {

    });
    _count++;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google",style: TextStyle(fontSize: 30),),
      ),
      body:Center(
        child: Text(_count.toString(),style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.blueAccent ),),
        
      ),
      floatingActionButton: FloatingActionButton(onPressed:incrementCounter,child: Icon(Icons.add,size: 30,),),
    );
  }
}
