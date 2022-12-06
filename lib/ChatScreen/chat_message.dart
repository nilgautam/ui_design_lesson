import 'package:flutter/material.dart';

String name = 'Nilesh';

class ChatMessage extends StatelessWidget {
  String text = '';
  ChatMessage({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child:
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Container(
          margin: const EdgeInsets.only(right: 16.0),
          child: CircleAvatar(
            child: Text(name[0]),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              child: Text(text),
            )
          ],
        )
      ]),
    );
  }
}
