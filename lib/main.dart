import 'package:flutter/material.dart';
import 'package:ui_design_lesson/ChatScreen/chat_home_page.dart';
import 'package:ui_design_lesson/home_page.dart';
import 'package:ui_design_lesson/json_data.dart';
import 'package:ui_design_lesson/lsit_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: ListViewData(),
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.amber,
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}
