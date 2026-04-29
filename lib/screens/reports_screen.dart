import 'package:flutter/material.dart';
import '../data/sample_data.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final openAlerts =
        sampleAlerts.where((alert) => alert.status != "Resolved").length;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reports"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ListView(
              children: [
                const Text(
                  "Daily SOC Summary",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text("Total Alerts: ${sampleAlerts.length}"),
                Text("Open Alerts: $openAlerts"),
                Text("Monitored Devices: ${sampleDevices.length}"),
                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 20),
                const Text(
                  "Analyst Notes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "The SOC observed increased alert activity from endpoint and firewall sources. "
                  "One critical malware alert remains open and should be prioritized. "
                  "The CEO laptop has the highest risk score and requires investigation.",
                ),
                const SizedBox(height: 30),
                ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Prototype report exported successfully."),
                      ),
                    );
                  },
                  icon: const Icon(Icons.download),
                  label: const Text("Export Report"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}