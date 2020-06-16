import 'package:flutter/material.dart';
import 'package:todoey_flutter/components/custom_checkbox_listtile.dart';
import 'package:todoey_flutter/models/task.dart';

class TodoListView extends StatefulWidget {
  final List<Task> tasklist;
  TodoListView({@required this.tasklist});
  @override
  _TodoListViewState createState() => _TodoListViewState();
}

class _TodoListViewState extends State<TodoListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return CustomCheckBoxListTile(
          isChecked: widget.tasklist[index].isChecked,
          title: widget.tasklist[index].title,
          callback: (bool checkBoxState) {
            setState(() {
              widget.tasklist[index].toggleState();
            });
          },
        );
      },
      itemCount: widget.tasklist.length,
    );
  }
}
