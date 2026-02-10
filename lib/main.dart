import 'package:flutter/material.dart';
import 'package:walletfox/utils/constants/strings.dart';
import 'package:walletfox/utils/styles/app_theme.dart';
import 'package:walletfox/views/dashboard_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_NAME,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,

      home: const DashboardView(),
    );
  }
}