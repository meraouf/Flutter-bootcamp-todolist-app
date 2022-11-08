import 'package:flutter/material.dart';
import 'package:todoey/widgets/tasks_list.dart';
import 'package:todoey/screens/addTask_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key, this.test}) : super(key: key);
  final String? test;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add
        ),
        onPressed: ()  {
          showModalBottomSheet(
              context: context,
              builder: (contect) => AddTaskScreen()
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40.0,
                  child: Icon(
                    Icons.list,
                    size: 40.0,
                    color: Colors.lightBlueAccent,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasksCount} Tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)
                ),
              ),
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
