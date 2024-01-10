import 'package:flutter/material.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({Key? key}) : super(key: key);

  @override
  State<TabBarExample> createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {

  List<Widget>tabView = [
    Center(
      child: Text('Home Screen'),
    ),
    Center(
      child: Text('Contact Screen'),
    ),
    Center(
      child: Text('Chat Screen'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Icon(Icons.home,size: 25,),
            Icon( Icons.contact_phone,size: 25,),
            Icon( Icons.chat,size: 25,),
          ]),
        ),
        body: TabBarView(children:tabView),
      ),
    );
  }
}
