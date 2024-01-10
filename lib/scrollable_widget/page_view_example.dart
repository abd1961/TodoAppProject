import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  State<PageViewExample> createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {
  @override
  Widget build(BuildContext context) {

    PageController controller = PageController();

    List<Widget>list = [
      Center(child: Text('First Page'),),
      Center(child: Text('Second Page'),),
      Center(child: Text('Third Page'),),
      Center(child: Text('Fourth Page'),),
    ];

    int curPage = 0;

    return Scaffold(
      appBar: AppBar(title: Text('Pageview Example'),),
      body: PageView(
        controller: controller,
        children: list,
        onPageChanged: (currentPage){
          setState(() {
            curPage = currentPage;
          });
        },
      ),
    );
  }
}
