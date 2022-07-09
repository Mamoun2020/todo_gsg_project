import 'package:flutter/material.dart';

import '../models/task.dart';

class TaskItem extends StatelessWidget {
  Task task;
  Function function;
  TaskItem(this.task,this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: CheckboxListTile(
        value: task.isComplete,
        onChanged: (bool? value) {
          function(task);
        },
        title: Text(task.title!),
      ),
    );
  }
}
