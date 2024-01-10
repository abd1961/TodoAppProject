import 'package:flutter/material.dart';

class SingleChildScrollviewExample extends StatefulWidget {
  const SingleChildScrollviewExample({Key? key}) : super(key: key);

  @override
  State<SingleChildScrollviewExample> createState() => _SingleChildScrollviewExampleState();
}

class _SingleChildScrollviewExampleState extends State<SingleChildScrollviewExample> {

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollview Example'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        controller: controller,
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 350,
              color: Colors.red,
              child: Text('First Box'),
            ),
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.green,
              child: Text('First Box'),
            ),
          ],
        ),
      ),
    );
  }
}
