import 'package:flutter/material.dart';

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({Key? key}) : super(key: key);

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {

  int currentIndex = 0;

  List<Widget>bottomNavWidget = [
    Text('Home'),
    Text('Profile'),
    Text('Menu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(accountName: Text('Karim'), accountEmail: Text('karim@gmail.com'),currentAccountPicture: CircleAvatar(backgroundColor: Colors.green,child: Text('A'),),),
            ListTile(leading: Icon(Icons.home),title: Text('Home'),),
            ListTile(leading: Icon(Icons.person),title: Text('Profile'),),
            ListTile(leading: Icon(Icons.notification_important),title: Text('Notification'),)
          ],
        ),
      ),
      appBar: AppBar(title: Text('Bottom Nav Example'),),
      body: Center(
        child: bottomNavWidget[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
          ] ,

        selectedItemColor: Colors.green,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedItemColor: Colors.blue,
        unselectedLabelStyle: TextStyle(color: Colors.blue),
        currentIndex: currentIndex,
        onTap: (index){
           setState(() {
             currentIndex = index;
           });
        },
      ),
    );
  }
}
