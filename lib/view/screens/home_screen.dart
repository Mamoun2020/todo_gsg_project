import 'package:flutter/material.dart';
import 'package:todo_gsg_project/view/screens/all_tasks_screen.dart';

import '../../data/task_data.dart';
import '../../models/task.dart';
import 'completed_tasks_screen.dart';
import 'incomplete_tasks_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  changeTaskState(Task task){
     int index =tasks.indexOf(task);
     tasks[index].isComplete = !tasks[index].isComplete;
     setState(() {

     });
  }
  TabController? tabController;
  initTabBar(){
    tabController = TabController(length: 3, vsync: this,);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo App'),
        bottom: TabBar(controller:tabController!,tabs:const [
          Tab(icon: Icon(Icons.list),),
          Tab(icon: Icon(Icons.done),),
          Tab(icon: Icon(Icons.cancel),),
        ],),
      ),

      body: TabBarView(controller: tabController!,
        children: [
          AllTasksScreen(changeTaskState),
          CompletedTasksScreen(changeTaskState),
          IncompleteTasksScreen(changeTaskState),
        ],
      ),
    );
  }
}
