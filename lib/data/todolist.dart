import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TodoList extends ChangeNotifier{
   List<Task> todoList = [];

  void addTask(String titleText) {
    todoList.add(Task(title: titleText, isChecked: false));
    notifyListeners();
  }
}
