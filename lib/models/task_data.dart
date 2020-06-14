import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoapp/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [Tasks(text: 'Buy Books')];

  void addTask(newValue) {
    _tasks.add(Tasks(text: newValue));
    notifyListeners();
  }

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Tasks task) {
    task.toggleCheck();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }

  int get getCount {
    return _tasks.length;
  }
}
