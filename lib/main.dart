import 'package:flutter/material.dart';
import 'package:symptocheker_ai/pages/emergency_guidance_page.dart';
import 'package:symptocheker_ai/pages/image_upload_page.dart';
import 'package:symptocheker_ai/pages/multi_language_page.dart';
import 'package:symptocheker_ai/pages/nearby_page.dart';
import 'package:symptocheker_ai/pages/personal_health_page.dart';
import 'package:symptocheker_ai/widgets/voice_input_button.dart';
import 'pages/login_page.dart'; // Add this import if ImageUploadPage is defined here
import 'pages/history_page.dart'; // Add this import for HistoryPagimport 'pages/nearby_provider_page.dart'; // Removed because the file does not exist

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
      routes: {
        '/symptom_history': (context) => const HistoryPage(history: []),
        '/voice_input': (context) => const VoiceInputPage(),
        '/image_upload': (context) => const ImageUploadPage(),
        '/personal_health': (context) => const PersonalHealthPage(),
        '/multi_language': (context) => const MultiLanguagePage(),
        '/nearby_provider': (context) => const NearbyProviderPage(),
        '/emergency_guidance': (context) => const EmergencyGuidancePage(),
      },
    );
  }
}
