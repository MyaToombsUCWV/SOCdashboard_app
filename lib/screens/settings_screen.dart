import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool notifications = true;
  bool offlineMode = true;
  bool secureStorage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: const Text("Simulated Push Notifications"),
            subtitle: const Text("Prototype toggle for alert notifications"),
            value: notifications,
            onChanged: (value) {
              setState(() => notifications = value);
            },
          ),
          SwitchListTile(
            title: const Text("Offline Mode"),
            subtitle: const Text("Uses local example data for demo purposes"),
            value: offlineMode,
            onChanged: (value) {
              setState(() => offlineMode = value);
            },
          ),
          SwitchListTile(
            title: const Text("Secure Storage Enabled"),
            subtitle: const Text("Prototype placeholder for secure local storage"),
            value: secureStorage,
            onChanged: (value) {
              setState(() => secureStorage = value);
            },
          ),
          const SizedBox(height: 20),
          const Card(
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.cyanAccent),
              title: Text("Prototype Mode"),
              subtitle: Text(
                "This version uses local sample data. Firebase authentication, Firestore, and real push notifications can be added later.",
              ),
            ),
          ),
        ],
      ),
    );
  }
}