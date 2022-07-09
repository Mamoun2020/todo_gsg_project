import 'package:flutter/material.dart';

import '../../data/task_data.dart';
import '../../widgets/task_item.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  AllTasksScreen(this.function, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index) =>TaskItem(tasks[index],function),
      itemCount: tasks.length,
    );
  }
}

