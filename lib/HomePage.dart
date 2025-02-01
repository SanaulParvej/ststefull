import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _task = [

  ];
  TextEditingController _taskcontroller = TextEditingController();

  _addTask(){
  if(_taskcontroller.text.isNotEmpty){
    setState(() {
      _task.add(_taskcontroller.text);
      _taskcontroller.clear();

    });
  }
  }
  _removeTask(int index){
    {
      setState(() {
        _task.removeAt(index);

      });
    }
  }

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
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              controller: _taskcontroller,
              decoration: InputDecoration(
                hintText: "Enter Your Task",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(onPressed: _addTask, icon: Icon(Icons.add))
              ),

            ),
            SizedBox(height: 20,),

           Expanded(
             child: ListView.builder(
                itemCount: _task.length,
                 itemBuilder:(context,index){
                  return Card(
                    child: ListTile(
                      title: Text(_task[index]),
                      trailing: IconButton(onPressed:()=> _removeTask(index), icon: Icon(Icons.delete)),
                    ),
                  );
                 }),
           )
          ],

        ),
      ),
    );
  }
}
