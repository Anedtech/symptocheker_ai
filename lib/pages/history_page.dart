import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<String> history;
  HistoryPage({required this.history});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Symptom History')),
      body:
          history.isEmpty
              ? Center(child: Text('No history yet'))
              : ListView(
                children: history.map((h) => ListTile(title: Text(h))).toList(),
              ),
    );
  }
}
