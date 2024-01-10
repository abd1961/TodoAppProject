import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostRequestExample extends StatefulWidget {
  const PostRequestExample({Key? key}) : super(key: key);

  @override
  State<PostRequestExample> createState() => _PostRequestExampleState();
}

class _PostRequestExampleState extends State<PostRequestExample> {
  
  String responseData = '';
  bool isLoading = false;

  Future<void>createPost()async{
    setState(() {
      isLoading = true;
    });
    
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.post(
      url,
      body: jsonEncode({
        'title': 'foo',
        'body': 'bar',
        'userId': 1,
      }),
      headers: {'Content-type': 'application/json; charset=UTF-8'}
    );

    print(response.statusCode);
    print('response body: ${response.body}');

    if(response.statusCode == 200 || response.statusCode == 201){
      responseData = response.body;
    } else{
      responseData = 'Error: ${response.body}';
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
        title: Text("Get Request"),
      ),
      body: Center(
        child: isLoading?Center(child: CircularProgressIndicator()): 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              createPost();
            }, child: Text('Submit Post')),
            SizedBox(height: 20,),
            Text(responseData)
          ],
        )
      ),
    );
  }
}
