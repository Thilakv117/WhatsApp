import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  const Content({super.key});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.black26,
            label: Text(
              "Ask meta AI or Search",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.grey[300]),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey, // Background color
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey, // Background color
                  ),
                  onPressed: () {},
                  child: Text(
                    "Unread",
                    style: TextStyle(color: Colors.grey[300]),
                  )),
              SizedBox(
                width: 5,
              ),
              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey, // Background color
                  ),
                  onPressed: () {},
                  child: Text(
                    "Favourites",
                    style: TextStyle(color: Colors.grey[300]),
                  )),
              SizedBox(
                width: 5,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey, // Background color
                ),
                onPressed: () {},
                child: Text(
                  "Groups",
                  style: TextStyle(color: Colors.grey[300]),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
