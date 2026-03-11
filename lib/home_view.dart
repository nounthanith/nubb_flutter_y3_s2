import 'package:flutter/material.dart';
import 'package:new_app/models/students_data.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<StudentsData> student = [
    StudentsData(id: 1, name: "Tong", sex: "M"),
    StudentsData(id: 2, name: "Ting", sex: "M"),
    StudentsData(id: 3, name: "Pich", sex: "M"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen')),
      body: ListView.builder(
        itemCount: student.length,
        itemBuilder: (context, index) {
          StudentsData s = student[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(child: Text(s.name)),
              title: Text(s.name),
              subtitle: Text("ID: #${s.id}"),
            ),
          );
        },
      ),
    );
  }
}

//stless for create
