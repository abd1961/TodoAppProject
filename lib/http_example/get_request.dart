import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GetRequestExample extends StatefulWidget {
  const GetRequestExample({Key? key}) : super(key: key);

  @override
  State<GetRequestExample> createState() => _GetRequestExampleState();
}

class _GetRequestExampleState extends State<GetRequestExample> {
  
  String responseData = '';

  bool isLoading = true;
  List<dynamic>postList = [];
  Future<void>getList() async{
    setState(() {
      isLoading = true;
    });
    Uri url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(url);
    if(response.statusCode == 200){

      postList = jsonDecode(response.body);
      responseData = postList.toString();

    } else{
      responseData = 'Error: ${response.body}';
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getList();
    });
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Request"),
      ),
      body: Center(
        child: isLoading?Center(child: CircularProgressIndicator()):
            ListView.builder(
              itemCount: postList.length,
                itemBuilder: (context,index){
                return ListTile(
                  leading: Text(postList[index]['id'].toString()),
                  title: Text(postList[index]['title']),
                );
                }
            )
      ),
    );
  }
}
