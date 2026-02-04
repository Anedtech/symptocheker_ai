import 'package:flutter/material.dart';

class SymptomInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmit;
  SymptomInput({required this.controller, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: controller,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: 'e.g. headache, fever, sore throat...',
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
          ),
        ),
        SizedBox(height: 24),
        ElevatedButton.icon(
          icon: Icon(Icons.medical_services),
          label: Text('Check Symptoms'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 16),
            textStyle: TextStyle(fontSize: 18),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => onSubmit(controller.text.trim()),
        ),
      ],
    );
  }
}
