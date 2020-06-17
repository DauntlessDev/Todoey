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
            return CustomCheckBoxListTile(
              isChecked: taskData.todoList[index].isChecked,
              title: taskData.todoList[index].title,
              callback: (bool checkBoxState) {
                // setState(() {
                //   // Provider.of<TodoList>(context).todoList[index].toggleState();
                // });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
