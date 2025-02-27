import 'package:flutter/material.dart';
import 'package:beta_ai/core/local/storage.dart';

class ThemeProvider extends ChangeNotifier {
  static const String _themeKey = 'theme_mode';
  final _storage = AppStorage();
  late ThemeMode _themeMode;

  ThemeProvider() {
    _loadTheme();
  }

  ThemeMode get themeMode => _themeMode;

  void _loadTheme() {
    final isDark = _storage.getBool(_themeKey) ?? false;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  Future<void> toggleTheme() async {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await _storage.setBool(_themeKey, _themeMode == ThemeMode.dark);
    notifyListeners();
  }
}
