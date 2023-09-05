import 'package:flutter/material.dart';

// A custom class for managing the theme state
class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = false; // Track whether dark mode is enabled

  // Function to toggle between light and dark mode
  void toggleTheme() {
    isDarkModeOn = !isDarkModeOn; // Toggle the theme mode
    notifyListeners(); // Notify any listeners (like UI widgets) about the change
  }
}
