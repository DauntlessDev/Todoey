import 'package:flutter/material.dart';

class TodoListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(30), children: [
      CustomCheckBoxListTile(),
      CustomCheckBoxListTile(),
      CustomCheckBoxListTile(),
    ]);
  }
}

class CustomCheckBoxListTile extends StatefulWidget {
  @override
  _CustomCheckBoxListTileState createState() => _CustomCheckBoxListTileState();
}

class _CustomCheckBoxListTileState extends State<CustomCheckBoxListTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        'Crush ko si jemica',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      value: isChecked,
      onChanged: (value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
