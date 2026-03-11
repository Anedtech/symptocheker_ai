import 'package:flutter/material.dart';
import 'package:symptocheker_ai/styles/app_colors.dart';

class Toolbar extends StatelessWidget {
  final String title;
  const Toolbar({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bluegrey,
      elevation: 0,
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
