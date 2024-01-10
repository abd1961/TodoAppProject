import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PutRequestExample extends StatefulWidget {
  const PutRequestExample({Key? key}) : super(key: key);

  @override
  State<PutRequestExample> createState() => _PutRequestExampleState();
}

class _PutRequestExampleState extends State<PutRequestExample> {
  
  String responseData = '';
  bool isLoading = false;

Future<void> updatePost()async{

  setState(() {
    isLoading = true;
  });

  Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
  final response = await http.put(
    url,
    body: jsonEncode({
    'id': 1,
    'title': 'Updated Post',
    'body': 'Lorem ipsum dolor sit amet.',
    'userId': 1,
    }),
    headers: {'Content-type': 'application/json; charset=UTF-8'}
  );

  if(response.statusCode == 200){
    responseData = response.body;
  } else{
    responseData = 'Error: ${response.statusCode}';
  }

  setState(() {
    isLoading = false;
  });

}

  @override
  void initState() {
    super.initState();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Put Request"),
      ),
      body: Center(
        child: isLoading?const Center(child: CircularProgressIndicator()):
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
             updatePost();
            }, child: Text('Update Data')),
            SizedBox(height: 20,),
            Text(responseData)
          ],
        )
      ),
    );
  }
}
