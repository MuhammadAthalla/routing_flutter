import 'package:flutter/material.dart';
import 'package:routing_flutter/button.dart';
import 'package:routing_flutter/first_page.dart';
import 'package:routing_flutter/main_page.dart';
import 'package:routing_flutter/move_with_data.dart';
import 'package:routing_flutter/return_data.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.blueAccent),
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        '/ind': (context) => FirstPage(),
        '/press': (context) => myButton(),
        '/mwd': (context) =>
            MoveWithData(ModalRoute.of(context)?.settings.arguments as String),
        '/rds':(context) => returnData()
      },
    );
  }
}
