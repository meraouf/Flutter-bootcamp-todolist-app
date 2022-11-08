import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

late String titleTask;
class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0)
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                onChanged: (value) {
                  titleTask = value;
                },
              ),
              TextButton(
                  onPressed: () {
                    Provider.of<TaskData>(context, listen: false).addTask(titleTask);
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)
                  ),
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
              )
            ],
          ),
        ),
    );
  }
}
