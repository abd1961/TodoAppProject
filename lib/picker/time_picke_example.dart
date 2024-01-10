import 'package:flutter/material.dart';

class TimerPickerExample extends StatefulWidget {
  const TimerPickerExample({Key? key}) : super(key: key);

  @override
  State<TimerPickerExample> createState() => _TimerPickerExampleState();
}

class _TimerPickerExampleState extends State<TimerPickerExample> {

  String time = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Timer Picker Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()async{

                 TimeOfDay? pickedTime = await  showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now()
                  );

                 if(pickedTime!=null){
                   setState(() {
                     time = '${pickedTime.hour}:${pickedTime.minute}';
                   });
                  }
                },
                child: Text('Pick Time')
            ),
            SizedBox(height: 20,),
            Text('Picked Time: $time')
          ],
        ),
      ),
    );
  }
}
