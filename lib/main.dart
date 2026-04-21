import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'services/api_service.dart';
import 'repositories/symptom_repository.dart';
import 'providers/symptom_provider.dart';
import 'pages/login_page.dart';
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
          create: (_, apiService) => SymptomRepository(apiService),
          update: (_, apiService, __) => SymptomRepository(apiService),
        ),

        // Providers (State Management)
        ChangeNotifierProxyProvider<SymptomRepository, SymptomProvider>(
          create: (_, repository) => SymptomProvider(repository),
          update: (_, repository, __) => SymptomProvider(repository),
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
          '/get-started': (context) => const GetStartedPage(),
          '/history': (context) => const SymptomHistoryPage(),
        },
      ),
    );
  }
}
