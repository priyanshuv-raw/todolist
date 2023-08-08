// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:todolist/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller ;

  VoidCallback onSave;

  DialogBox({super.key, required this.controller, required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blueGrey[300],
      content: SizedBox(
        height: 150,
        width: 350,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                    controller: controller,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 42, 42, 42),
                    ),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Dock your task here 📝",
                    ),
                    maxLength: null,
                    maxLines: null,
                    ),
              )
                  ,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(text: "Done", onPressed: onSave),
                  //   MyButton(text: "Cancel", onPressed: () {}),
                ],
              )
            ]),
      ),
    );
  }
}
