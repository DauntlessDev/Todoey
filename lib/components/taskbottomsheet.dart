import 'package:flutter/material.dart';

String taskTitle;

class TaskBottomSheet extends StatefulWidget {
  TaskBottomSheet({@required this.callback});

  final Function callback;

  @override
  _TaskBottomSheetState createState() => _TaskBottomSheetState();
}

class _TaskBottomSheetState extends State<TaskBottomSheet> {
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 55),
      color: Colors.white,
      height: 270,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            controller: textEditingController,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueAccent),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blueGrey),
              ),
            ),
            onChanged: (value) {
              taskTitle = value;
            },
          ),
          SizedBox(height: 25),
          ButtonTheme(
            minWidth: double.infinity,
            child: FlatButton(
              color: Colors.blueAccent,
              padding: EdgeInsets.all(20),
              onPressed: () {
                textEditingController.clear();
                widget.callback(taskTitle);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
