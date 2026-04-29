import '../models/alert_model.dart';
import '../models/device_model.dart';
//creating sample data to populate the app
final sampleAlerts = [
  AlertModel(
    title: "Critical Malware Detected",
    severity: "Critical",
    source: "Workstation-07",
    time: "2 min ago",
    status: "Open",
  ),
  AlertModel(
    title: "Unauthorized Login Attempt",
    severity: "High",
    source: "VPN Gateway",
    time: "8 min ago",
    status: "Open",
  ),
  AlertModel(
    title: "Suspicious IP Activity",
    severity: "Medium",
    source: "Firewall",
    time: "15 min ago",
    status: "Investigating",
  ),
  AlertModel(
    title: "Port Scan Detected",
    severity: "Low",
    source: "Web Server",
    time: "32 min ago",
    status: "Resolved",
  ),
];

final sampleDevices = [
  DeviceModel(
    name: "SOC-Workstation-01",
    ipAddress: "192.168.1.24",
    status: "Online",
    riskScore: 12,
  ),
  DeviceModel(
    name: "Database-Server",
    ipAddress: "192.168.1.10",
    status: "Online",
    riskScore: 31,
  ),
  DeviceModel(
    name: "CEO-Laptop",
    ipAddress: "192.168.1.88",
    status: "Offline",
    riskScore: 74,
  ),
  DeviceModel(
    name: "Web-Server-Prod",
    ipAddress: "192.168.1.50",
    status: "Online",
    riskScore: 45,
  ),
];
