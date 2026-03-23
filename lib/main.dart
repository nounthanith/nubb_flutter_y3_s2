import 'package:flutter/material.dart';
import 'package:new_app/home_view.dart';
import 'package:new_app/row_column.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RowColumn());
  }
}
