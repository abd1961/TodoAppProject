import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {

  String previousPageName = '';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        previousPageName = ModalRoute.of(context)?.settings.arguments.toString()??'';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

          },
          child: Text('Go Back to $previousPageName'),
        ),
      ),
    );
  }
}
