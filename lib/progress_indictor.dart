import 'package:flutter/material.dart';

class ProgressIndicatorExample extends StatelessWidget {
  const ProgressIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Indicator'),),
      body: Center(
        child: CircularProgressIndicator(value: .3,backgroundColor: Colors.green,valueColor: AlwaysStoppedAnimation<Color>(Colors.red),strokeWidth: 4,),
      ),
    );
  }
}
