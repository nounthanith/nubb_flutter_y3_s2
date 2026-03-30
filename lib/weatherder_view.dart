import 'package:flutter/material.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  static const String degreeSymbol = "°";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.replay),
        title: Text("Today"),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              "MOUNTAIN VIEW",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
            Text(
              "Clear Sky",
              style: TextStyle(color: Colors.grey, fontSize: 18.0),
            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Icon(Icons.wb_sunny, size: 120.0, color: Colors.black),
            ),

            Text(
              "24$degreeSymbol",
              style: TextStyle(fontSize: 84.0, fontWeight: FontWeight.w100),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildMinMax("Min", 21),
                Container(
                  height: 50.0,
                  width: 1,
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 40.0),
                ),
                _buildMinMax("Max", 32),
              ],
            ),

            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildHourlyItem("5 PM", Icons.sunny, "32"),
                  _buildHourlyItem("6 PM", Icons.cloud, "12"),
                  _buildHourlyItem("7 PM", Icons.sunny_snowing, "11"),
                  _buildHourlyItem("8 PM", Icons.sunny, "11"),
                ],
              ),
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                _buildMoreData("Humidity", "80%"),
                _buildMoreData("Humidity", "80%"),
                _buildMoreData("Humidity", "80%"),
                _buildMoreData("Humidity", "80%"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMinMax(String label, int degree) {
    return Column(
      children: [
        Text(label, style: TextStyle(color: Colors.grey)),
        Text(
          "$degree$degreeSymbol",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildHourlyItem(String time, IconData icon, String temp) {
    return Column(
      children: [
        Text(time, style: TextStyle(color: Colors.grey, fontSize: 14.0)),
        SizedBox(height: 8.0),
        Icon(icon, size: 28.0),
        SizedBox(height: 8.0),
        Text(
          "$temp$degreeSymbol",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget _buildMoreData(String title, String value) {
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Text(title, style: TextStyle(color: Colors.grey)),
          Text(
            value,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
