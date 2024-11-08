import 'package:flutter/material.dart';
import 'package:test/screen/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
        colors: [Colors.blue[300]! ,Colors.purpleAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Placeholder for the top image
          Image.asset(
            'assets/splash.png', // Replace with your actual asset path
            height: 400,
            width: 400,
          ),
          SizedBox(height: 20),

          // Text: "Learn anything Anytime anywhere"
          Text(
            'Learn anything\nAnytime anywhere',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),

          // Subtext: "Online learning is education that takes place over the internet."
          Text(
            'Online learning is education that takes place over the internet.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 100),

          // Start Now button
          ElevatedButton(
            
            onPressed: () {
              // Define button action here
              Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
            },
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Color(0xFFFF7043), // Orange button color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
            ),
            child: Text(
              'Start Now',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
