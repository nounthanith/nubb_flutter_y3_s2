import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              child: ClipOval(
                child: Image.asset(
                  "./../assets/profile.jpg",
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Nuon Thanith",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'namefont',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "IOS & Android Developer",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                Divider(color: Colors.white, endIndent: 90.0, indent: 90.0),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.man),
                      Text(
                        "+885 939 392 90",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.mail),
                      Text(
                        "nuonthanith99@gmail.com",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              padding: EdgeInsets.all(20.0),
              color: Colors.white,
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      Text(
                        "nuonthanith99@gmail.com",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
