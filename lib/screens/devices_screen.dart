import 'package:flutter/material.dart';
import '../data/sample_data.dart';

class DevicesScreen extends StatelessWidget {
  const DevicesScreen({super.key});

  Color riskColor(int score) {
    if (score >= 70) return Colors.redAccent;
    if (score >= 40) return Colors.orangeAccent;
    return Colors.greenAccent;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Monitored Devices"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: sampleDevices.length,
        itemBuilder: (context, index) {
          final device = sampleDevices[index];

          return Card(
            child: ListTile(
              leading: Icon(
                Icons.computer,
                color: device.status == "Online"
                    ? Colors.greenAccent
                    : Colors.redAccent,
              ),
              title: Text(device.name),
              subtitle: Text(
                "IP Address: ${device.ipAddress}\nStatus: ${device.status}",
              ),
              trailing: CircleAvatar(
                backgroundColor: riskColor(device.riskScore),
                child: Text(
                  "${device.riskScore}",
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}