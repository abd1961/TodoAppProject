import 'package:flutter/material.dart';

class CardExample extends StatelessWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Example'),),
      body: Center(
        child: SizedBox(
          height: 200,
          width: 200,
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            child: Center(child: Text('Card1')),
          ),
        ),
      ),
    );
  }
}
