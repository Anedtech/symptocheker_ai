import 'package:flutter/material.dart';

class VoiceInputButton extends StatelessWidget {
  const VoiceInputButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.mic),
      label: const Text('Start Listening'),
      onPressed: () {
        // TODO: Implement voice input logic
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Listening for symptoms...')),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF1976D2),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
