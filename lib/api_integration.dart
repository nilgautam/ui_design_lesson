import 'package:flutter/material.dart';

class ApiIntegration extends StatefulWidget {
  ApiIntegration({Key? key}) : super(key: key);

  @override
  State<ApiIntegration> createState() => _ApiIntegrationState();
}

class _ApiIntegrationState extends State<ApiIntegration> {
  final String url = 'https://jsonplaceholder.typicode.com/users';
  late List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List Represent by Api")),
        body: Container(
          child: Column(children: [
            Text("Hello"),
            ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: Text(''),
                );
              },
            )
          ]),
        ));
  }
}
