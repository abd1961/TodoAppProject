import 'package:first_project/navigation_and_routing/data_passing/second_page.dart';
import 'package:first_project/navigation_and_routing/data_passing/third_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage(previousPageName: 'First Page')));

             },
              child: Text('Go to Second Page'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: (){

                Navigator.pushNamed(context,
                    '/third-page',
                  arguments: 'First Page'

                );

             },
              child: Text('Go to Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
