import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  final ThemeMode themeMode;
  final Function(bool) onThemeChanged;
  final Locale locale;
  final ValueChanged<Locale?> onLocaleChanged;
  SettingsPage({
    required this.themeMode,
    required this.onThemeChanged,
    required this.locale,
    required this.onLocaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Dark Mode'),
            trailing: Switch(
              value: themeMode == ThemeMode.dark,
              onChanged: onThemeChanged,
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: DropdownButton<Locale>(
              value: locale,
              items: [
                DropdownMenuItem(child: Text('English'), value: Locale('en')),
                DropdownMenuItem(child: Text('Français'), value: Locale('fr')),
                DropdownMenuItem(child: Text('Español'), value: Locale('es')),
              ],
              onChanged: onLocaleChanged,
            ),
          ),
        ],
      ),
    );
  }
}
