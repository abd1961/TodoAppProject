import 'package:flutter/material.dart';

class ContainerExample extends StatefulWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  State<ContainerExample> createState() => _ContainerExampleState();
}

class _ContainerExampleState extends State<ContainerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Example'),),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue
          ),
          child: Container(
            height: 150,
            width: 150,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.green,
              //borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black),
              shape: BoxShape.circle,
            ),
            child: Text('Container Text'),
          ),
        ),
      ),


    );
  }
}
