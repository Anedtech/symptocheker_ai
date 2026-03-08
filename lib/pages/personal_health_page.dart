import 'package:flutter/material.dart';

class PersonalHealthPage extends StatelessWidget {
  const PersonalHealthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Personal Health',
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
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.person, color: Color(0xFF1976D2), size: 60),
                const SizedBox(height: 24),
                const Text(
                  'Your Health Overview',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1976D2),
                    fontSize: 24,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ListTile(
                  leading: const Icon(Icons.favorite, color: Colors.red),
                  title: const Text('Heart Rate'),
                  trailing: const Text('72 bpm'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.monitor_weight,
                    color: Colors.green,
                  ),
                  title: const Text('Weight'),
                  trailing: const Text('68 kg'),
                ),
                ListTile(
                  leading: const Icon(Icons.water_drop, color: Colors.blue),
                  title: const Text('Hydration'),
                  trailing: const Text('Good'),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.local_hospital,
                    color: Colors.orange,
                  ),
                  title: const Text('Last Checkup'),
                  trailing: const Text('2026-02-01'),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Track your health stats and stay updated for better wellbeing.',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
