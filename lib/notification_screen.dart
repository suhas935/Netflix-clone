// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text("New Movie Added: HIT 3", style: TextStyle(color: Colors.white)),
            subtitle: Text("Watch the latest thriller now!", style: TextStyle(color: Colors.white70)),
            onTap: () {
              
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text("Subscription Ends Soon", style: TextStyle(color: Colors.white)),
            subtitle: Text("Renew your subscription to continue watching.", style: TextStyle(color: Colors.white70)),
            onTap: () {
              
            },
          ),
          Divider(color: Colors.grey),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.white),
            title: Text("Top Picks for You", style: TextStyle(color: Colors.white)),
            subtitle: Text("Check out our new recommendations.", style: TextStyle(color: Colors.white70)),
            onTap: () {
             
            },
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
