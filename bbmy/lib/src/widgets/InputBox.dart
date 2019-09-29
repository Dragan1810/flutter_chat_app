import 'package:flutter/material.dart';

Widget getInput(callback, messageController) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            onSubmitted: (value) => callback(),
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              suffixIcon: IconButton(
                icon: Icon(Icons.send),
                onPressed: callback,
              ),
              hintText: "Enter a Message...",
            ),
            controller: messageController,
          ),
        ),
      ],
    ),
  );
}
