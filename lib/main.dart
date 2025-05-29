import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui';

void main() {
  runApp(SymptoCheckerAI());
}

class SymptoCheckerAI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SymptoChecker AI',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SymptomCheckerHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SymptomCheckerHome extends StatefulWidget {
  @override
  _SymptomCheckerHomeState createState() => _SymptomCheckerHomeState();
}

class _SymptomCheckerHomeState extends State<SymptomCheckerHome> {
  final TextEditingController _symptomController = TextEditingController();
  String _result = '';
  bool _loading = false;

  Future<void> _checkSymptoms() async {
    final symptoms = _symptomController.text.trim();
    if (symptoms.isEmpty) return;

    setState(() {
      _loading = true;
      _result = '';
    });

    // Simulated AI API call (replace with your real AI endpoint)
    final response = await http.post(
      Uri.parse(
        'https://api-inference.huggingface.co/models/google/flan-t5-base',
      ),
      headers: {
        'Authorization': 'Bearer <YOUR_REAL_HUGGINGFACE_API_KEY>',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'inputs':
            'Patient symptoms: $symptoms. What could be the possible causes?',
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _result = data[0]['generated_text'] ?? 'No diagnosis found.';
        _loading = false;
      });
    } else {
      setState(() {
        _result = 'Error: Unable to get diagnosis. Please try again.';
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SymptoChecker AI'),
        centerTitle: true,
        elevation: 2,
      ),
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal.shade100,
                  Colors.teal.shade400,
                  Colors.teal.shade700,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Decorative blurred circles
          Positioned(
            top: -60,
            left: -40,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.18),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
                child: Container(),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: -30,
            child: Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.tealAccent.withOpacity(0.15),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: Container(),
              ),
            ),
          ),
          // Main content
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 32),
                Text(
                  'Describe your symptoms',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[900],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _symptomController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    hintText: 'e.g. headache, fever, sore throat...',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
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
                  onPressed: _loading ? null : _checkSymptoms,
                ),
                SizedBox(height: 32),
                if (_loading)
                  Center(child: CircularProgressIndicator())
                else if (_result.isNotEmpty)
                  Expanded(
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: SingleChildScrollView(
                          child: Text(
                            _result,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.teal[800],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
