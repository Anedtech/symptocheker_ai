// lib/providers/symptom_provider.dart
import 'package:flutter/material.dart';
import '../repositories/symptom_repository.dart';
import '../models/symptom_history.dart';

class SymptomProvider with ChangeNotifier {
  final SymptomRepository repository;

  SymptomProvider(this.repository);

  List<SymptomHistory> _history = [];
  bool _isLoading = false;
  String? _error;

  List<SymptomHistory> get history => _history;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> fetchSymptomHistory(String userId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _history = await repository.getSymptomHistory(userId);
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
