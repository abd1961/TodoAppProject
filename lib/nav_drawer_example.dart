import 'package:flutter/material.dart';

class NavDrawerExample extends StatefulWidget {
  const NavDrawerExample({Key? key}) : super(key: key);

  @override
  State<NavDrawerExample> createState() => _NavDrawerExampleState();
}

class _NavDrawerExampleState extends State<NavDrawerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Karimullah'),
              accountEmail: Text('karimullah@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(
                  'K'
                ),
              ),
            ),

            ListTile(
              leading:Icon(Icons.home),
              title: Text('Home'),
              onTap: (){
              Navigator.pop(context);
            },),

            ListTile(
              leading:Icon(Icons.person),
              title: Text('Profile'),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(Icons.notification_important),
              title: Text('Notification'),
              onTap: (){
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      appBar: AppBar(title: Text('Navigation Drawer'),),
      body: Center(child: Text('Nav Drawer'),),
    );
  }
}
