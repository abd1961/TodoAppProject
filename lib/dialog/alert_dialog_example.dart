import 'package:flutter/material.dart';

class AlertDialogExample extends StatefulWidget {
  const AlertDialogExample({Key? key}) : super(key: key);

  @override
  State<AlertDialogExample> createState() => _AlertDialogExampleState();
}

class _AlertDialogExampleState extends State<AlertDialogExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){

            showDialog(context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text('Alert Dialog Title'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 10,),
                        Text('This is Content Section'),
                        SizedBox(height: 10,)
                      ],
                    ),
                    actions: [
                      ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                      }, child: Text('Close'))
                    ],
                  );
                }
            );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
