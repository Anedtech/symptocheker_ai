// lib/models/symptom_history.dart
class SymptomHistory {
  final String id;
  final String symptom;
  final DateTime date;
  final String diagnosis;
  final List<String> recommendations;
  
  SymptomHistory({
    required this.id,
    required this.symptom,
    required this.date,
    required this.diagnosis,
    required this.recommendations,
  });
  
  factory SymptomHistory.fromJson(Map<String, dynamic> json) {
    return SymptomHistory(
      id: json['id'],
      symptom: json['symptom'],
      date: DateTime.parse(json['date']),
      diagnosis: json['diagnosis'],
      recommendations: List<String>.from(json['recommendations']),
    );
  }
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'symptom': symptom,
    'date': date.toIso8601String(),
    'diagnosis': diagnosis,
    'recommendations': recommendations,
  };
}