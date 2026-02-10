import 'package:flutter/material.dart';
import 'package:walletfox/utils/styles/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WalletFox",
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}