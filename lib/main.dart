import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'package:whatsapp/updates_page/first_page.dart';

void main()
{
  runApp(MyAp());
}


class MyAp extends StatelessWidget {
  const MyAp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context)=> HomePage(),
        '/updates': (context)=>  UpdatesPage(),
      },
    );
  }
}