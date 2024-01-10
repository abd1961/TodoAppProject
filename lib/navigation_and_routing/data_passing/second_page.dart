import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String previousPageName;
  const SecondPage({Key? key,required this.previousPageName}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

         },
          child: Text('Go Back to ${widget.previousPageName}'),
        ),
      ),
    );
  }
}
