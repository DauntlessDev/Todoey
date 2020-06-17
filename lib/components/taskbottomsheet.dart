import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/data/todolist.dart';

String taskTitle;

class TaskBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SingleChildScrollView(
        child: Container(
          height: 230,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 55),
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
                autofocus: true,
                textAlign: TextAlign.center,
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
                    Provider.of<TodoList>(context, listen: false)
                        .addTask(taskTitle);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
