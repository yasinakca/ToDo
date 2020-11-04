import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('Item 1'),
      trailing: Checkbox(
        value: true,
      ),
    );
  }
}
