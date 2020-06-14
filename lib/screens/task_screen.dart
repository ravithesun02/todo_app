import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/models/task_data.dart';
import 'package:todoapp/widgets/bottom_widget.dart';
import 'package:todoapp/widgets/task_list.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white70,
                        child: Icon(
                          Icons.list,
                          color: Colors.indigo,
                          size: 30.0,
                        ),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        'TODO',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      child: Text(
                        '${Provider.of<TaskData>(context).getCount} tasks',
                        style: TextStyle(
                            color: Colors.white30,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700),
                      ),
                      alignment: Alignment.centerLeft,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Material(
                color: Colors.white,
                shadowColor: Colors.white70,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
                elevation: 5.0,
                child: TaskList(),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigoAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => BottomWidget(),
          );
        },
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
      ),
    );
  }
}
