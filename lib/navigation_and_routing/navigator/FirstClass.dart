import 'package:first_project/navigation_and_routing/navigator/second_class.dart';
import 'package:flutter/material.dart';

class FirstClass extends StatefulWidget {
  const FirstClass({Key? key}) : super(key: key);

  @override
  State<FirstClass> createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=>SecondClass())
            );

          },
          child: Text('Go to Second Page'),
        ),
      ),
    );
  }
}
