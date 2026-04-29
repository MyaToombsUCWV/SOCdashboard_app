class DeviceModel {
  final String name;
  final String ipAddress;
  final String status;
  final int riskScore;

  DeviceModel({
    required this.name,
    required this.ipAddress,
    required this.status,
    required this.riskScore,
  });
}