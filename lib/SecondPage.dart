import 'package:flutter/material.dart';
import 'ThirPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void SelectedIndex(int index) {
    setState(() {
      current_index = index;
      if(current_index == 0){
        Navigator.pushNamed(context, '/');
      }
      else if(current_index == 1)
      {
        Navigator.pop(context, '/updates');
      }
    });
  }
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF212329),
        actions: [
          Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          PopupMenuButton(
            iconColor: Colors.white,
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Color(0xFF212329),
      body: Content(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.black,
        ),
        backgroundColor: const Color.fromARGB(255, 94, 201, 97),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: SelectedIndex,
        currentIndex: current_index,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        selectedItemColor: Colors.green,
        backgroundColor: Color(0xFF212329),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        unselectedIconTheme: IconThemeData(color: Colors.green),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.white,

            ),
            label: "Chats",
                      ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
              color: Colors.white,
            ),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group,
              color: Colors.white,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            label: "Chat",
          ),
        ],
      ),
    );
  }
}
