import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final String result;
  ResultCard({required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFB2FEFA), Color(0xFF0ED2F7), Color(0xFF005C97)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white.withOpacity(0.95),
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Text(
              result,
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFF005C97),
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ),
    );
  }
}
