import 'package:flutter/material.dart';

class RadioButtonExample extends StatefulWidget {
  const RadioButtonExample({Key? key}) : super(key: key);

  @override
  State<RadioButtonExample> createState() => _RadioButtonExampleState();
}

class _RadioButtonExampleState extends State<RadioButtonExample> {


  BestTutorialSite _site = BestTutorialSite.javatpoint;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Button"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ListTile(
              title: Text("www.javatpoint.com"),
              trailing: Radio(
                  value: BestTutorialSite.javatpoint,
                  groupValue: _site,
                  onChanged: (value){
                    setState(() {
                      _site = value!;
                    });
                  }
              ),
            ),
            ListTile(
              title: Text("www.w3school.com"),
              trailing: Radio(
                  value: BestTutorialSite.w3schools,
                  groupValue: _site,
                  onChanged: (value){
                    setState(() {
                      _site = value!;
                    });
                  }
              ),
            ),
            ListTile(
              title: Text("www.tutorialandexample.com"),
              trailing: Radio(
                  value: BestTutorialSite.tutorialandexample,
                  groupValue: _site,
                  onChanged: (value){
                    setState(() {
                      _site = value!;
                    });
                  }
              ),
            ),

          ],
        ),
      ),
    );
  }

}

enum BestTutorialSite{javatpoint,w3schools,tutorialandexample}

