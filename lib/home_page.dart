import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller = new TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar'),
        leading: Icon(Icons.arrow_back),
      ),
      body: TabBar(
        controller: controller,
        tabs: const <Tab>[
          Tab(
              icon: Icon(
            Icons.person,
            color: Colors.black,
          )),
          Tab(
            icon: Icon(
              Icons.email,
              color: Colors.black,
            ),
            child: Text(
              'data',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          Tab(
              icon: Icon(
            Icons.password,
            color: Colors.black,
          )),
          Tab(
              icon: Icon(
            Icons.wallet,
            color: Colors.black,
          )),
        ],
      ),
    );
  }
}
