// lib/screens/reports_screen.dart

import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});
//creating report that can be exported (will update for actual functionality in the future)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reports")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Export Security Report"),
        ),
      ),
    );
  }
}
