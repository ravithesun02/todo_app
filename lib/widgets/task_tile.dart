import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {this.taskTitle, this.isChecked, this.checkBoxCallback, this.deleteTask});
  final String taskTitle;
  final bool isChecked;
  final Function checkBoxCallback;
  final Function deleteTask;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkBoxCallback,
        value: isChecked,
        activeColor: Colors.indigoAccent,
      ),
      onLongPress: deleteTask,
    );
  }
}
