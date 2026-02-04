import 'package:flutter/material.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const SymptoChekerAiApp());
}

class SymptoChekerAiApp extends StatelessWidget {
  const SymptoChekerAiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SymptoCheker Ai',
      debugShowCheckedModeBanner: false,
      home: const LoginPage(), // This is correct!
    );
  }
}
