import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();  // year-month-day

enum Category { food, travel, leisure, work } // predefined allowed valued

const categoryIcons = {
  Category.food: Icons.food_bank,
  Category.travel: Icons.airplane_ticket,
  Category.leisure: Icons.gamepad,
  Category.work: Icons.laptop_windows,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // generates unique string id

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  // this is a getter not a function
  String get formattedDate {
    return formatter.format(date);
  }
}
