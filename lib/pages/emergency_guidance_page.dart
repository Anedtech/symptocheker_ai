import 'package:flutter/material.dart';

class EmergencyGuidancePage extends StatelessWidget {
  const EmergencyGuidancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFD32F2F),
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Emergency Guidance',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.warning_amber_rounded,
                  color: Color(0xFFD32F2F),
                  size: 60,
                ),
                const SizedBox(height: 24),
                const Text(
                  'Emergency Instructions',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xFFD32F2F),
                    fontSize: 24,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'If you are experiencing severe symptoms such as:\n\n'
                  '• Difficulty breathing\n'
                  '• Chest pain\n'
                  '• Loss of consciousness\n'
                  '• Severe bleeding\n\n'
                  'Call emergency services immediately!',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                ElevatedButton.icon(
                  onPressed: () {
                    // You can add direct call logic here if needed
                  },
                  icon: const Icon(Icons.call, color: Colors.white),
                  label: const Text(
                    'Call Emergency (112)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD32F2F),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 32,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
