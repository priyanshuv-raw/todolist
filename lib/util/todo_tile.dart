// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)?onChanged;


ToDoTile({
  super.key,
  required this.taskName,
  required this.taskCompleted,
  required this.onChanged
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 25),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(color:Colors.blueGrey,
        borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Color.fromARGB(213, 0, 0, 0),
              ),
            Text(taskName,
              style: TextStyle(
                decoration: taskCompleted 
                ? TextDecoration.lineThrough 
                : TextDecoration.none,
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 16
              ),
            ),
          ],
        ),
      ),
    );
  }
}