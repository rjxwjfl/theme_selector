import 'package:flutter/material.dart';

void main() {
  TimeOfDay a = TimeOfDay(hour: 21, minute: 30);
  print(a);
  DateTime b = DateTime.now().add(Duration(hours: a.hour, minutes: a.minute));
  print(b);
}