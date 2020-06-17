import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/components/custom_checkbox_listtile.dart';
import 'package:todoey_flutter/data/todolist.dart';

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TodoList>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final currentTask = taskData.todoList[index];
            return CustomCheckBoxListTile(
              isChecked: currentTask.isChecked,
              title: currentTask.title,
              callback: (bool checkBoxState) {
                taskData.updateTask(currentTask);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
