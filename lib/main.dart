import 'package:first_project/card_example.dart';
import 'package:first_project/check_box_example.dart';
import 'package:first_project/drop_down_button_example.dart';
import 'package:first_project/flutter_button_example.dart';
import 'package:first_project/icon_example.dart';
import 'package:first_project/image_widget/asset_image_widget.dart';
import 'package:first_project/image_widget/circle_avatar_example.dart';
import 'package:first_project/image_widget/fade_in_image_example.dart';
import 'package:first_project/image_widget/network_image_example.dart';
import 'package:first_project/input_field/form_example.dart';
import 'package:first_project/listview/listview_builder_example.dart';
import 'package:first_project/listview/listview_example.dart';
import 'package:first_project/navigation_and_routing/data_passing/first_page.dart';
import 'package:first_project/navigation_and_routing/data_passing/third_page.dart';
import 'package:first_project/navigation_and_routing/name_route/contact_page.dart';
import 'package:first_project/navigation_and_routing/name_route/home_screen.dart';
import 'package:first_project/navigation_and_routing/navigator/FirstClass.dart';
import 'package:first_project/picker/date_picker.dart';
import 'package:first_project/picker/time_picke_example.dart';
import 'package:first_project/progress_indictor.dart';
import 'package:first_project/radio_button_example.dart';
import 'package:first_project/scrollable_widget/page_view_example.dart';
import 'package:first_project/scrollable_widget/single_child_scrollview.dart';
import 'package:first_project/slider_example.dart';
import 'package:first_project/sqlite_db/todo_screen.dart';
import 'package:first_project/switch_widget.dart';
import 'package:first_project/tab_bar_widget/tab_example.dart';
import 'package:first_project/todo/todo_screen.dart';
import 'package:flutter/material.dart';

import 'api/test_api.dart';
import 'bottom_sheet/modal_bottom_sheet_example.dart';
import 'dialog/alert_dialog_example.dart';
import 'gridview/gridview_example.dart';
import 'http_example/delete_request.dart';
import 'http_example/get_request.dart';
import 'http_example/post_request.dart';
import 'http_example/put_request.dart';
import 'input_field/text_field_example.dart';
import 'listview/listview_seperator_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme:
      ThemeData(primaryColor: Colors.green, brightness: Brightness.light),
      theme: ThemeData(primaryColor: Colors.red, brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      //initialRoute: '/',
      //initialRoute: '/tab-bar',
      //initialRoute: '/todo-screen',
      //initialRoute: '/get-request',
      //initialRoute: '/post-request',
      //initialRoute: '/put-request',
      initialRoute: '/delete-request',
      routes: {
        '/': (context) => FirstPage(),
        '/contact': (context) => ContactScreen(),
        '/third-page': (context) => ThirdPage(),
        '/tab-bar': (context) => TabBarExample(),
        '/todo-screen': (context) => TodoScreen(),
        '/get-request': (context) => GetRequestExample(),
        '/post-request': (context) => PostRequestExample(),
        '/put-request': (context) => PutRequestExample(),
        '/delete-request': (context) => DeleteRequestExample(),
      },
    // home: FirstPage(),
    );
  }
}

