import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //  backgroundColor: Colors.red,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                "+ New Chat",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Chat history"),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
              leading: CircleAvatar(),
              title: Text("User Name"),
              trailing: PopupMenuButton(
                itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("data")),
                    PopupMenuItem(child: Text("Log Out"))
                  ];
                },
              ))
        ],
      ),
    );
  }
}
