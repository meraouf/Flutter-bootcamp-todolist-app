import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';


class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: Provider.of<TaskData>(context).tasksCount,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallBack: (checkboxState) {
                  taskData.updateTask(task);
                },
                onLongPress: () {
                    taskData.deleteTask(task);
                },
              );
            }
        );
      },
    );
  }
}


