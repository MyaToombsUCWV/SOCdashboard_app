// lib/screens/devices_screen.dart

import 'package:flutter/material.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});
//creating devices screen 
  //adding example devices
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Devices")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Workstation-01"),
            subtitle: Text("Online"),
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Server-DB"),
            subtitle: Text("Online"),
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Laptop-CEO"),
            subtitle: Text("Offline"),
          ),
        ],
      ),
    );
  }
}
