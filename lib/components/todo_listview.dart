import 'package:flutter/material.dart';

class TodoListView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(30), children: [
      CheckboxListTile(
        title: Text('Yo'),
        value: false,
        onChanged: (value) {},
      ),
      CheckboxListTile(
        title: Text('Mommy'),
        value: false,
        onChanged: (value) {},
      ),
    ]);
  }
}
