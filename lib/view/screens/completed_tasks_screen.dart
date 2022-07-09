import 'package:flutter/material.dart';

import '../../data/task_data.dart';
import '../../widgets/task_item.dart';

class CompletedTasksScreen extends StatelessWidget {
  Function function;
  CompletedTasksScreen(this.function);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index) => TaskItem(tasks.where((element) =>element.isComplete).toList()[index],function));
  }
}
