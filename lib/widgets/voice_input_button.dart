import 'package:flutter/material.dart';
import 'package:symptocheker_ai/widgets/VoiceInputButton.dart';
// Remove the self-import to avoid circular reference

class VoiceInputPage extends StatelessWidget {
  const VoiceInputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Voice Symptom Input',
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
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Color(0xFF1976D2), Color(0xFF64B5F6)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  padding: const EdgeInsets.all(18),
                  child: const Icon(Icons.mic, color: Colors.white, size: 60),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Speak Your Symptoms',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1976D2),
                    fontSize: 24,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Tap the microphone and describe your symptoms. SymptoCheker Ai will listen and help you analyze them.',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                // Voice input button widget (implement logic in this widget)
                VoiceInputButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
