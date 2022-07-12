import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../data/task_data.dart';
import '../../widgets/task_item.dart';

class CompletedTasksScreen extends StatelessWidget {
  Function function;
  CompletedTasksScreen(this.function);

  @override
  Widget build(BuildContext context) {
    return tasks.where((element) => element.isComplete).isEmpty ? 
        Lottie.asset('assets/animations/empty.json'):
    ListView.builder(
      itemCount: tasks.where((element) => element.isComplete).length,
        itemBuilder: (context,index) => TaskItem(tasks.where((element) =>element.isComplete).toList()[index],function));
  }
}
