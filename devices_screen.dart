// lib/screens/devices_screen.dart

import 'package:flutter/material.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  //adding example devices
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Devices")),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.computer), //adding workstation
            title: Text("Workstation-01"),
            subtitle: Text("Online"),
          ),
          ListTile(
            leading: Icon(Icons.computer), //adding server
            title: Text("Server-DB"),
            subtitle: Text("Online"),
          ),
          ListTile(
            leading: Icon(Icons.computer), //adding laptop
            title: Text("Laptop-CEO"),
            subtitle: Text("Offline"),
          ),
        ],
      ),
    );
  }
}
