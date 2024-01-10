import 'package:flutter/material.dart';

class ListViewExample extends StatefulWidget {
  const ListViewExample({Key? key}) : super(key: key);

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Colors.green,
          ),
          Container(
            height: 300,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.green,
          ),

        ],
      ),
    );
  }
}
