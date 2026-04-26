import 'package:flutter/material.dart';

class CalculatorView extends StatefulWidget {
  CalculatorView({super.key});

  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Calculator",style: TextStyle(color: Colors.white),),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is Number that will be change"),
            Text(num.toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          num++;
        });
      }, child: Text("+"),),
    );
  }
}
