import 'package:todoey_flutter/models/task.dart';

class TodoList {
  static List<Task> todoList = [];

  static void addTask(String titleText) {
    todoList.add(Task(title: titleText, isChecked: false));
  }
}
