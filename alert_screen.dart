// lib/screens/alerts_screen.dart

import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alerts = [
      "Critical Malware Detected",
      "Unauthorized Login Attempt",
      "Suspicious IP Activity",
      "Firewall Rule Changed",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Alerts")),
      body: ListView.builder(
        itemCount: alerts.length,
        itemBuilder: (_, i) => ListTile(
          leading: const Icon(Icons.warning, color: Colors.red),
          title: Text(alerts[i]),
          trailing: const Text("Open"),
        ),
      ),
    );
  }
}