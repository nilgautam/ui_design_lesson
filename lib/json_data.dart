import 'dart:convert';

import 'package:flutter/material.dart';

class JsonData extends StatefulWidget {
  @override
  State<JsonData> createState() => _JsonDataState();
}

class _JsonDataState extends State<JsonData> {
  late List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Load JSON Data')),
        body: Container(
          child: Center(
            child: FutureBuilder(
              future: DefaultAssetBundle.of(context)
                  .loadString('load_json/load_json.json'),
              builder: (context, snapshot) {
                var myData = json.decode(snapshot.data.toString());
                return ListView.builder(
                  itemBuilder: ((BuildContext context, int index) {
                    return Card(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text("Name: " + myData[index]["name"]),
                            Text("Age: " + myData[index]["age"]),
                            Text('Email: ' + myData[index]["email"]),
                            Text('Phone Number: ' + myData[index]["phone"]),
                          ]),
                    );
                  }),
                  itemCount: myData == null ? 0 : myData.length,
                );
              },
            ),
          ),
        ));
  }
}
