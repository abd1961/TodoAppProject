
import 'package:flutter/material.dart';

class TooltipExample extends StatelessWidget {
  const TooltipExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tooltip Example'),),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.green
          ),
          child: Tooltip(
            message: 'This is tooltip',
            child: Text('click'),
          ),
        ),
      ),
    );
  }
}
