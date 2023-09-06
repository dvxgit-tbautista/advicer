// Import necessary packages and files
import 'package:advicer/3_application/core/services/theme_service.dart';
import 'package:advicer/3_application/pages/advice/advice_page.dart';
import 'package:flutter/material.dart';
import 'package:advicer/theme.dart';
import 'package:provider/provider.dart';

// Main function, entry point of the application
void main() {
  // Run the app with a ChangeNotifierProvider to manage themes
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeService(), // Create a ThemeService instance
    child: const MyApp(), // Use MyApp as the root widget
  ));
}

// The main application widget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return MaterialApp(
          // Set the theme mode based on the user's preference
          themeMode:
              themeService.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          theme: AppTheme.lightTheme, // Light theme
          darkTheme: AppTheme.darkTheme, // Dark theme
          home: const AdvicerPageWrapperProvider());
    });
  }
}
