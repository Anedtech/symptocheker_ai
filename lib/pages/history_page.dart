import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<String> history;
  const HistoryPage({required this.history, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Symptom History',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1,
          ),
        ),
      ),
      body:
          history.isEmpty
              ? Center(
                child: Text(
                  'No history yet',
                  style: TextStyle(
                    color: Colors.blueGrey[400],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              )
              : Padding(
                padding: const EdgeInsets.all(16),
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: history.length,
                    separatorBuilder:
                        (_, __) =>
                            Divider(color: Colors.blueGrey[100], thickness: 1),
                    itemBuilder:
                        (context, index) => ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xFF1976D2),
                            child: Icon(Icons.history, color: Colors.white),
                          ),
                          title: Text(
                            history[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF1976D2),
                            ),
                          ),
                          subtitle: Text(
                            'Checked on ${DateTime.now().subtract(Duration(days: index)).toLocal().toString().split(' ')[0]}',
                            style: TextStyle(
                              color: Colors.blueGrey[400],
                              fontSize: 13,
                            ),
                          ),
                        ),
                  ),
                ),
              ),
    );
  }
}
