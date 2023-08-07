import 'package:flutter/material.dart';
import 'package:todolist/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;


DialogBox({super.key, required this.controller,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey[300],
      content: const SizedBox(
        height: 150,
        width: 350,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            style: (TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Dock your task here 📝"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Heel"),
              MyButton(text: "Done", onPressed: onSave),
              //   MyButton(text: "Cancel", onPressed: () {}),
            ],
          )
        ]),
      ),
    );
  }
}
