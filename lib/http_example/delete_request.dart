import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DeleteRequestExample extends StatefulWidget {
  const DeleteRequestExample({Key? key}) : super(key: key);

  @override
  State<DeleteRequestExample> createState() => _DeleteRequestExampleState();
}

class _DeleteRequestExampleState extends State<DeleteRequestExample> {
  
  String responseData = '';
  bool isLoading = false;
  
  Future<void> deletePost() async{

    setState(() {
      isLoading = true;
    });

    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
    final response = await http.delete(url);
    if(response.statusCode == 200){
      responseData = 'Date Deleted Successfully';
    } else{
      responseData = 'Failed to Deleting Data';
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
        title: Text("Delete Request"),
      ),
      body: Center(
        child: isLoading?const Center(child: CircularProgressIndicator()):
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
             deletePost();
            }, child: Text('Delete Post')),
            SizedBox(height: 20,),
            Text(responseData)
          ],
        )
      ),
    );
  }
}
