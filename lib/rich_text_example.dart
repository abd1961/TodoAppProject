
import 'package:flutter/material.dart';

class RichTextExample extends StatefulWidget {
  const RichTextExample({Key? key}) : super(key: key);

  @override
  State<RichTextExample> createState() => _RichTextExampleState();
}

class _RichTextExampleState extends State<RichTextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RichText Example'),),
      body: Center(
        child: RichText(
            text: TextSpan(
              text: "Don't have an account?",
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'SignUp',
                  style: TextStyle(color: Colors.blue)
                )
              ]
            )
        ),
      ),


    );
  }
}
