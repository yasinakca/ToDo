import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('Item 1',style: TextStyle(decoration: isChecked == true ? TextDecoration.lineThrough : null),),
      trailing: TaskCheckbox(isChecked,(value){
        setState(() {
          isChecked = value;
        });
      }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckbox;

  TaskCheckbox(this.checkboxState,this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckbox,
    );
  }
}
