import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  List get tasks {
    return _tasks;
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String title) {
    final task = Task(
      name: title
    );
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}