import 'package:flutter/material.dart';

class CustomCheckBoxListTile extends StatelessWidget {
  CustomCheckBoxListTile(
      {@required this.title,
      @required this.isChecked,
      @required this.callback});

  final bool isChecked;
  final String title;
  final Function callback;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(
          this.title,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        value: this.isChecked,
        onChanged: this.callback);
  }
}
