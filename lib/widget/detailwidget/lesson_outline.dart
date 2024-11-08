import 'package:flutter/material.dart';

class LessonOutline extends StatelessWidget {
  final String imagePath; // Image path as String
  final String title;
  final String duration;
  final String imageIcon; // Path to the trailing icon image

  const LessonOutline({
    required this.imagePath,
    required this.title,
    required this.duration,
    required this.imageIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white, // Remove shadow by setting elevation to 0
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0), // Add padding inside the Card
        child: ListTile(
          leading: Image.asset(
            imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(duration),
          trailing: Image.asset(
            imageIcon,
            width: 30,
            height: 30,
          ),
          onTap: () {
            // Play lesson functionality
          },
        ),
      ),
    );
  }
}
