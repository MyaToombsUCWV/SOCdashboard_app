import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../data/sample_data.dart';
import 'alert_screen.dart';
import 'devices_screen.dart';
import 'reports_screen.dart';
import 'settings_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Widget statCard(String title, String value, IconData icon) {
    return Card(
      child: SizedBox(
        width: 220,
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, size: 32, color: Colors.cyanAccent),
              const Spacer(),
              Text(title, style: const TextStyle(color: Colors.white70)),
              Text(
                value,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void openScreen(BuildContext context, Widget screen) {
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  @override
  Widget build(BuildContext context) {
    final criticalAlerts =
        sampleAlerts.where((alert) => alert.severity == "Critical").length;

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.security, size: 42, color: Colors.cyanAccent),
                  SizedBox(height: 12),
                  Text("Sentinel SOC", style: TextStyle(fontSize: 24)),
                  Text("Prototype Dashboard"),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text("Alerts"),
              onTap: () => openScreen(context, const AlertsScreen()),
            ),
            ListTile(
              leading: const Icon(Icons.computer),
              title: const Text("Devices"),
              onTap: () => openScreen(context, const DevicesScreen()),
            ),
            ListTile(
              leading: const Icon(Icons.description),
              title: const Text("Reports"),
              onTap: () => openScreen(context, const ReportsScreen()),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () => openScreen(context, const SettingsScreen()),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("SOC Dashboard"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                statCard("Threat Score", "92%", Icons.shield),
                statCard("Open Alerts", "${sampleAlerts.length}", Icons.warning),
                statCard("Critical Alerts", "$criticalAlerts", Icons.dangerous),
                statCard("Devices", "${sampleDevices.length}", Icons.computer),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Alert Activity Over Time",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Expanded(
                        child: LineChart(
                          LineChartData(
                            gridData: const FlGridData(show: true),
                            titlesData: const FlTitlesData(show: true),
                            borderData: FlBorderData(show: true),
                            lineBarsData: [
                              LineChartBarData(
                                spots: const [
                                  FlSpot(0, 3),
                                  FlSpot(1, 5),
                                  FlSpot(2, 4),
                                  FlSpot(3, 8),
                                  FlSpot(4, 6),
                                  FlSpot(5, 10),
                                  FlSpot(6, 7),
                                ],
                                isCurved: true,
                                barWidth: 4,
                                dotData: const FlDotData(show: true),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}