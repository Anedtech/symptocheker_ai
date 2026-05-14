import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:symptocheker_ai/pages/history_page.dart';
import 'package:symptocheker_ai/pages/image_upload_page.dart';
import 'package:symptocheker_ai/pages/multi_language_page.dart';
import 'services/api_service.dart';
import 'repositories/symptom_repository.dart';
import 'providers/symptom_provider.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Services
        Provider<ApiService>(create: (_) => ApiService()),

        // Repositories
        ProxyProvider<ApiService, SymptomRepository>(
          create:
              (BuildContext context) => SymptomRepository(
                Provider.of<ApiService>(context, listen: false),
              ),
          update:
              (
                BuildContext context,
                ApiService apiService,
                SymptomRepository? previous,
              ) => SymptomRepository(apiService),
        ),

        // Providers (State Management)
        ChangeNotifierProxyProvider<SymptomRepository, SymptomProvider>(
          create:
              (BuildContext context) => SymptomProvider(
                Provider.of<SymptomRepository>(context, listen: false),
              ),
          update:
              (
                BuildContext context,
                SymptomRepository repository,
                SymptomProvider? previous,
              ) => SymptomProvider(repository),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,
        ),
        home: const LoginPage(),
        routes: {
          '/home': (context) => const HomePage(),
          '/history': (context) => const HomePage(),
          '/image_upload': (context) => const ImageUploadPage(),
          '/multi_language': (context) => const MultiLanguagePage(),
        },
      ),
    );
  }
}
