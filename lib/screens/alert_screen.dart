import 'package:flutter/material.dart';
import '../data/sample_data.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});
//creating alert levels and associating colors
  Color severityColor(String severity) {
    switch (severity) {
      case "Critical":
        return Colors.redAccent;
      case "High":
        return Colors.orangeAccent;
      case "Medium":
        return Colors.yellowAccent;
      default:
        return Colors.greenAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Security Alerts"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sampleAlerts.length,
        itemBuilder: (context, index) {
          final alert = sampleAlerts[index];

          return Card(
            child: ListTile(
              leading: Icon(
                Icons.warning,
                color: severityColor(alert.severity),
              ),
              title: Text(alert.title),
              subtitle: Text(
                "Severity: ${alert.severity}\nSource: ${alert.source}\nTime: ${alert.time}",
              ),
              trailing: Text(alert.status),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
