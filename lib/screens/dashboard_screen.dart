// lib/screens/dashboard_screen.dart

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import 'alert_screen.dart';
import 'devices_screen.dart';
import 'reports_screen.dart';
import 'settings_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
//creating main dashboard screen
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
              Icon(icon, size: 30, color: Colors.cyanAccent),
              const Spacer(),
              Text(title),
              Text(
                value,
                style: const TextStyle(fontSize: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Mya SOC"),
            ),
            ListTile(
              title: const Text("Alerts"), //creating alerts display
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AlertsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Devices"), //creating devices display
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const DevicesScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Reports"), //creating reports display
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const ReportsScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Settings"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SettingsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("SOC Dashboard"), //creating dashboard summary
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                statCard("Threat Score", "92%", Icons.shield), //creating icons 
                statCard("Open Alerts", "17", Icons.warning),
                statCard("Devices Online", "83", Icons.computer),
                statCard("Incidents", "4", Icons.bug_report),
              ],
            ),
            const SizedBox(height: 30), //creating data chart
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(0, 3),
                            FlSpot(1, 5),
                            FlSpot(2, 4),
                            FlSpot(3, 7),
                            FlSpot(4, 6),
                            FlSpot(5, 8),
                          ],
                          isCurved: true,
                        ),
                      ],
                    ),
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
