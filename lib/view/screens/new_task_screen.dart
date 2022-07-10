import 'package:flutter/material.dart';

import '../../data/task_data.dart';
import '../../models/task.dart';

class NewTaskScreen extends StatelessWidget {
  Function function;
  NewTaskScreen(this.function);
  String content = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (value){
              content = value;
            },
          ),
          ElevatedButton(onPressed: (){
            tasks.add(Task(title:content,));
            function();
            Navigator.pop(context);
          }, child: Text('Add New Task',),)
        ],
      ),
    );
  }
}
