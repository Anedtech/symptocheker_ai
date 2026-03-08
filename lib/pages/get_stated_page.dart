import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F8FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1976D2),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'SymptoCheker Ai',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          // <-- Fixes overflow
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
                      gradient: LinearGradient(
                        colors: [
                          Colors.blueGrey.withOpacity(0.15),
                          Colors.blueGrey.withOpacity(0.15),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    padding: const EdgeInsets.all(18),
                    child: ClipOval(
                      child: Image.asset(
                        'images/sympto.jpg', // <-- use your correct asset path
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Check Your Symptoms',
                    style: const TextStyle(
                      fontWeight: FontWeight.w900, // Extra bold
                      color: Color(0xFF1976D2),
                      fontSize: 26,
                      letterSpacing: 1.5,
                      shadows: [
                        Shadow(
                          color: Colors.blueAccent,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Describe your symptoms and get instant AI-powered health insights.',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Type your symptom',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1976D2),
                        fontSize: 16,
                        letterSpacing: 1,
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF1976D2),
                        size: 28,
                      ),
                      filled: true,
                      fillColor: Color(0xFFE3ECF7),
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 24,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Color(0xFF1976D2),
                          width: 1.5,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(
                          color: Color(0xFF1976D2),
                          width: 2,
                        ),
                      ),
                    ),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF1976D2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.check_circle_outline, size: 20),
                      label: const Text(
                        'Start Checking',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 1,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1976D2),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 32,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Column(
                    children: [
                      FeatureTile(
                        icon: Icons.search,
                        title: 'Smart Symptom Checker',
                        subtitle:
                            'Enter your symptoms and let AI analyze them.',
                      ),
                      const SizedBox(height: 16),
                      FeatureTile(
                        icon: Icons.lightbulb_outline,
                        title: 'Personalized Suggestions',
                        subtitle: 'Get health tips tailored to your input.',
                      ),
                      const SizedBox(height: 16),
                      FeatureTile(
                        icon: Icons.privacy_tip_outlined,
                        title: 'Private & Secure',
                        subtitle: 'Your health data stays on your device.',
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  // Add a nice dropdown menu for navigation to other pages
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Color(0xFFE3ECF7),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xFF1976D2), width: 1.2),
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Color(0xFF1976D2),
                      ),
                      underline: SizedBox(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1976D2),
                        fontSize: 16,
                      ),
                      hint: const Text(
                        'Go to other features',
                        style: TextStyle(color: Color(0xFF1976D2)),
                      ),
                      items: [
                        DropdownMenuItem(
                          value: 'history',
                          child: Text('Symptom History'),
                        ),
                        DropdownMenuItem(
                          value: 'voice',
                          child: Text('Voice Input'),
                        ),
                        DropdownMenuItem(
                          value: 'image',
                          child: Text('Image Upload'),
                        ),
                        DropdownMenuItem(
                          value: 'health',
                          child: Text('Personal Health'),
                        ),
                        DropdownMenuItem(
                          value: 'language',
                          child: Text('Multi Language'),
                        ),
                        DropdownMenuItem(
                          value: 'provider',
                          child: Text('Nearby Healthcare Provider'),
                        ),
                        DropdownMenuItem(
                          value: 'emergency',
                          child: Text('Emergency Guidance'),
                        ),
                      ],
                      onChanged: (value) {
                        if (value == 'history') {
                          Navigator.pushNamed(context, '/symptom_history');
                        } else if (value == 'voice') {
                          Navigator.pushNamed(context, '/voice_input');
                        } else if (value == 'image') {
                          Navigator.pushNamed(context, '/image_upload');
                        } else if (value == 'health') {
                          Navigator.pushNamed(context, '/personal_health');
                        } else if (value == 'language') {
                          Navigator.pushNamed(context, '/multi_language');
                        } else if (value == 'provider') {
                          Navigator.pushNamed(context, '/nearby_provider');
                        } else if (value == 'emergency') {
                          Navigator.pushNamed(context, '/emergency_guidance');
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const FeatureTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: const Color(0xFF1976D2),
          child: Icon(icon, color: Colors.white),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xFF1976D2),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                style: const TextStyle(color: Colors.blueGrey, fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
