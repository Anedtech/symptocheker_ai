import 'package:flutter/material.dart';

class MultiLanguagePage extends StatefulWidget {
  const MultiLanguagePage({Key? key}) : super(key: key);

  @override
  State<MultiLanguagePage> createState() => _MultiLanguagePageState();
}

class _MultiLanguagePageState extends State<MultiLanguagePage> {
  String? _selectedLanguage;

  final Map<String, String> languages = {
    'en': 'English',
    'fr': 'French',
    'es': 'Spanish',
    'sw': 'Swahili',
    'ar': 'Arabic',
    'zh': 'Chinese',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Multi Language',
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
                const Icon(Icons.language, color: Color(0xFF1976D2), size: 60),
                const SizedBox(height: 24),
                const Text(
                  'Choose Your Language',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF1976D2),
                    fontSize: 24,
                    letterSpacing: 1.2,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Language',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  value: _selectedLanguage,
                  items:
                      languages.entries
                          .map(
                            (entry) => DropdownMenuItem(
                              value: entry.key,
                              child: Text(entry.value),
                            ),
                          )
                          .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedLanguage = value;
                    });
                  },
                ),
                const SizedBox(height: 24),
                Text(
                  _selectedLanguage == null
                      ? 'Select a language to use SymptoCheker Ai in your preferred language.'
                      : 'You selected: ${languages[_selectedLanguage]!}',
                  style: const TextStyle(color: Colors.blueGrey, fontSize: 15),
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
