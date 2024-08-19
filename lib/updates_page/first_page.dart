import 'package:flutter/material.dart';

class UpdatesPage extends StatefulWidget {
  const UpdatesPage({super.key});

  @override
  State<UpdatesPage> createState() => _UpdatesPageState();
}

class _UpdatesPageState extends State<UpdatesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF212329),
      ),
      backgroundColor: Color(0xFF212329),
    );
  }
}