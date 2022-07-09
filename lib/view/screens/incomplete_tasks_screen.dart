import 'package:flutter/material.dart';

import '../../data/task_data.dart';
import '../../widgets/task_item.dart';

class IncompleteTasksScreen extends StatelessWidget {

  IncompleteTasksScreen(this.function);
  Function function;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.where((element) => !element.isComplete).length,
        itemBuilder: (context,index)=>
        TaskItem(tasks.where((element) => !element.isComplete).toList()[index],function));
  }
}
