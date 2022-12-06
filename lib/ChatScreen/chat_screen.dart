import 'package:flutter/material.dart';
import 'package:ui_design_lesson/ChatScreen/chat_message.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<ChatMessage> _message = <ChatMessage>[];
  final TextEditingController textController = TextEditingController();
  void _handleSubmitting(String text) {
    textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
    );
    setState(() {
      _message.insert(0, message);
    });
  }

  Widget _textComposeWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: Row(
        children: <Widget>[
          Flexible(
              child: TextField(
            decoration: InputDecoration(hintText: 'Send Message'),
            controller: textController,
            onSubmitted: _handleSubmitting,
          )),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitting(textController.text),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _message[index],
            itemCount: _message.length,
          ),
        ),
        Divider(
          height: 1.0,
        ),
        Container(
          child: _textComposeWidget(),
        )
      ],
    );
  }
}
