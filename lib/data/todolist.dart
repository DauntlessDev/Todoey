import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TodoList extends ChangeNotifier {
  List<Task> _todoList = [];

  void addTask(String titleText) {
    _todoList.add(Task(title: titleText, isChecked: false));
    notifyListeners();
  }

  UnmodifiableListView<Task> get todoList => UnmodifiableListView(_todoList);

  int get taskCount => _todoList.length;

  void updateTask(Task task){
    task.toggleState();
    notifyListeners();
  }
  void deleteTask(int index){
    _todoList.removeAt(index);
    notifyListeners();
  }
}
