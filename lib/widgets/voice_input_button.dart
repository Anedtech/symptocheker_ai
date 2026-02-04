import 'package:flutter/material.dart';

class VoiceInputButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Voice input coming soon!')));
      },
      child: Icon(Icons.mic),
      tooltip: 'Voice Input',
    );
  }
}
