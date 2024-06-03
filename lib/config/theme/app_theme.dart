import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

enum AppThemeColor { custom, blue, teal, green, yellow, orange, pink, red }

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.red,
];

class AppTheme {
  final AppThemeColor selectedColor;

  AppTheme({
    this.selectedColor = AppThemeColor.custom,
  }) : assert(
            selectedColor.index >= 0 &&
                selectedColor.index < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor.index],
      brightness: Brightness.light,
    );
  }
}
