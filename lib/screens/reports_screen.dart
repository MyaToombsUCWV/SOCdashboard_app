// lib/screens/reports_screen.dart

import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});
//adding reports screen
  //adding export reports option (will be updated to actually function in future updates)
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
