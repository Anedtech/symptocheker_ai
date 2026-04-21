// lib/repositories/symptom_repository.dart
import '../services/api_service.dart';
import '../models/symptom_history.dart';

class SymptomRepository {
  final ApiService apiService;
  
  SymptomRepository(this.apiService);
  
  Future<List<SymptomHistory>> getSymptomHistory(String userId) async {
    try {
      final response = await apiService.get('/users/$userId/symptoms');
      final data = response['data'] as List;
      return data.map((item) => SymptomHistory.fromJson(item)).toList();
    } catch (e) {
      throw Exception('Failed to fetch symptom history: $e');
    }
  }
  
  Future<Map<String, dynamic>> checkSymptoms(String symptom) async {
    try {
      final response = await apiService.post('/symptoms/check', {
        'symptom': symptom,
      });
      return response['data'];
    } catch (e) {
      throw Exception('Failed to check symptoms: $e');
    }
  }
}