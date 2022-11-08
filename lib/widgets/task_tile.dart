import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';


class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallBack,
    required this.onLongPress
  }) : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final void Function(bool? checkboxState) checkboxCallBack;
  final void Function() onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallBack,
      ),
      onLongPress: onLongPress,
    );
  }
}
