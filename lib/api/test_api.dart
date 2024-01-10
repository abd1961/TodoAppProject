import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpExample extends StatefulWidget {
  @override
  _HttpExampleState createState() => _HttpExampleState();
}

class _HttpExampleState extends State<HttpExample> {


  Future<void> fetchData() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      setState(() {
        responseData = data.toString();
      });
    } else {
      setState(() {
        responseData = 'Error: ${response.statusCode}';
      });
    }
  }

  String responseData = '';
  Future<void> createPost() async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      body: jsonEncode({
        'title': 'New Post',
        'body': 'Lorem ipsum dolor sit amet.',
        'userId': 1,
      }),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 201) {
      final dynamic data = jsonDecode(response.body);
      setState(() {
        responseData = data.toString();
      });
    } else {
      setState(() {
        responseData = 'Error: ${response.statusCode}';
      });
    }
  }

  Future<void> updatePost() async {
    final response = await http.put(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      body: jsonEncode({
        'id': 1,
        'title': 'Updated Post',
        'body': 'Lorem ipsum dolor sit amet.',
        'userId': 1,
      }),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final dynamic data = jsonDecode(response.body);
      setState(() {
        responseData = data.toString();
      });
    } else {
      setState(() {
        responseData = 'Error: ${response.statusCode}';
      });
    }
  }

  Future<void> deletePost() async {
    final response = await http.delete(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (response.statusCode == 200) {
      setState(() {
        responseData = 'Post deleted successfully';
      });
    } else {
      setState(() {
        responseData = 'Error: ${response.statusCode}';
      });
    }
  }

  Future<void> patchPost() async {
    final response = await http.patch(
      Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      body: jsonEncode({
        'title': 'Patched Post',
      }),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      final dynamic data = jsonDecode(response.body);
      setState(() {
        responseData = data.toString();
      });
    } else {
      setState(() {
        responseData = 'Error: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTTP Request Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: fetchData,
            child: Text('GET Data'),
          ),
          ElevatedButton(
            onPressed: createPost,
            child: Text('POST Data'),
          ),
          ElevatedButton(
            onPressed: updatePost,
            child: Text('PUT Data'),
          ),
          ElevatedButton(
            onPressed: deletePost,
            child: Text('DELETE Data'),
          ),
          ElevatedButton(
            onPressed: patchPost,
            child: Text('PATCH Data'),
          ),
          SizedBox(height: 16),
          Text('Response:'),
          SizedBox(height: 8),
          Expanded(
            child: SingleChildScrollView(
              child: Text(responseData),
            ),
          ),
        ],
      ),
    );
  }

}