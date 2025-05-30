import 'package:flutter/material.dart';


//importing from package material.dart and updating stateless wigget 


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Profile"),
        
        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.white),
            onPressed: () {
              
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[800],
              child: Icon(Icons.person, size: 50, color: Colors.white),
            ),
            SizedBox(height: 20),
            Text(
              "Arms Dealers",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              "dealers011@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.history, color: Colors.white),
                    title: Text("Watch History", style: TextStyle(color: Colors.white)),
                    onTap: () {
                     
                    },
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    leading: Icon(Icons.download, color: Colors.white),
                    title: Text("Downloads", style: TextStyle(color: Colors.white)),
                    onTap: () {
                     
                    },
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    leading: Icon(Icons.payment, color: Colors.white),
                    title: Text("Billing Details", style: TextStyle(color: Colors.white)),
                    onTap: () {
                     
                    },
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    leading: Icon(Icons.help_outline, color: Colors.white),
                    title: Text("Help Center", style: TextStyle(color: Colors.white)),
                    onTap: () {
                      
                    },
                  ),
                  Divider(color: Colors.grey),
                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text("Logout", style: TextStyle(color: Colors.red)),
                    onTap: () {
                      
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
