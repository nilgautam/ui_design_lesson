import 'package:flutter/material.dart';

class ListViewData extends StatefulWidget {
  ListViewData({Key? key}) : super(key: key);

  @override
  State<ListViewData> createState() => _ListViewDataState();
}

class _ListViewDataState extends State<ListViewData> {
  List data = ["Nilesh", "Mahesh", "Aman", "Harish", "KK", "Satish", "Deepak"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: ((BuildContext context, int index) {
          return Text(data[index]);
        }),
        itemCount: data.length,
      ),
    );
  }
}
