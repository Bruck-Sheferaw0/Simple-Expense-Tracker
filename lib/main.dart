import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 0, 0, 0),
);

void main() {
  runApp(
    MaterialApp(
      home: Expenses(),
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(1, 0, 0, 0),
        colorScheme: kColorScheme,
        cardTheme: CardThemeData().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: EdgeInsets.all(12),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer
        ),
        ),
      ),
    ),
  );
}
