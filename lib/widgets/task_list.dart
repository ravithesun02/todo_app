import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';

import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Consumer<TaskData>(builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskData.tasks[index].text,
              isChecked: taskData.tasks[index].ischecked,
              checkBoxCallback: (newValue) {
                taskData.updateTask(taskData.tasks[index]);
              },
              deleteTask: () {
                taskData.deleteTask(index);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      }),
    );
  }
}
