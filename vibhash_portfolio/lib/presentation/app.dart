import 'package:flutter/material.dart';
import 'pages/home_page.dart';

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  State<PortfolioApp> createState() => _PortfolioAppState();
}

class _PortfolioAppState extends State<PortfolioApp> {
  bool _isDark = false;

  void _toggleTheme() => setState(() => _isDark = !_isDark);

  @override
  Widget build(BuildContext context) {
    final Color accent = const Color(0xFF2563EB); // Deep blue
    return MaterialApp(
      title: 'Vibhash Gyan Minz | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: accent, brightness: Brightness.light),
        useMaterial3: true,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: -1),
          headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          bodyLarge: TextStyle(fontSize: 18),
        ),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: accent,
          elevation: 0,
          titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.black),
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: accent, brightness: Brightness.dark),
        useMaterial3: true,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: -1, color: Colors.white),
          headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white70),
        ),
        scaffoldBackgroundColor: const Color(0xFF181A20),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFF181A20),
          foregroundColor: accent,
          elevation: 0,
          titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
      ),
      themeMode: _isDark ? ThemeMode.dark : ThemeMode.light,
      home: PortfolioHomePage(onToggleTheme: _toggleTheme, isDark: _isDark),
    );
  }
}
