class AlertModel { //model in which alerts will be displayed
  final String title;
  final String severity;
  final String source;
  final String time;
  final String status;

  AlertModel({
    required this.title,
    required this.severity,
    required this.source,
    required this.time,
    required this.status,
  });
}
