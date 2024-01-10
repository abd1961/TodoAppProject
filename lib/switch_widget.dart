import 'package:flutter/material.dart';


class SwitchExample extends StatefulWidget {
  const SwitchExample({Key? key}) : super(key: key);

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {

  bool isSwitchActive =  false;
  bool areYouSingle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(value: isSwitchActive, onChanged: (value){
              setState(() {
                isSwitchActive = value;
              });
            }),
            SizedBox(height: 20,),
            SwitchListTile(
              title: Text('Are you single?'),
                value: areYouSingle,
                activeColor: Colors.green,
                onChanged: (value){
                setState(() {
                  areYouSingle = value;
                });
                }
            )
          ],
        ),
      ),
    );
  }
}
