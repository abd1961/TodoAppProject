import 'package:flutter/material.dart';

class GridviewExample extends StatefulWidget {
  const GridviewExample({Key? key}) : super(key: key);

  @override
  State<GridviewExample> createState() => _GridviewExampleState();
}

class _GridviewExampleState extends State<GridviewExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.9),
      appBar: AppBar(
        title: Text('Gridview Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5
            ),
            itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(30),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Box ${index}'),
            );
            }
        ),
      ),
    );
  }
}
