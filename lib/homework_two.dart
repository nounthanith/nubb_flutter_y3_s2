// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class HomeworkTwo extends StatelessWidget {
  bool isCheck = false;

  HomeworkTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.apps)),
        title: Row(
          children: [
            Text("Task"),
            Text("Manager", style: TextStyle(color: Colors.red)),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.replay)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: EdgeInsets.all(12.0),
                width: double.infinity,
                child: Text(
                  "You have[8] pedding task out of [8]",
                  textAlign: TextAlign.center,
                ),
              ),

              data("Play Game", "11/Jan/2022"),
              data("Play Game", "11/Jan/2022"),
              data("Play Game", "11/Jan/2022"),
              data("Play Game", "11/Jan/2022"),
              data("Play Game", "11/Jan/2022"),
              data("Play Game", "11/Jan/2022"),
              data("Play Game", "11/Jan/2022"),
            ],
          ),
        ),
      ),
    );
  }

  Widget data(String name, String date) {
    return Column(
      children: [
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blueGrey.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(date),
                ],
              ),
              Checkbox(
                value: isCheck,
                onChanged: (bool? value) {
                  isCheck = value ?? true;
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
