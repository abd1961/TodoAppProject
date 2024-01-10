import 'package:flutter/material.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
         },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
