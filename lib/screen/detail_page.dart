import 'package:flutter/material.dart';
import 'package:test/widget/detailwidget/card_widget.dart';
import 'package:test/widget/detailwidget/lesson_outline.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imagePath;

  const DetailPage({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Detail", // Display the passed title here
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      // Favorite button functionality
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              CardWidget(title: title,),
              SizedBox(height: 10,),
              Center(
                child: Image.asset(
                  imagePath, // Display the passed image path here
                  width: 230,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Outline',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // "See all" button functionality
                    },
                    child: Text(
                      'See all',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    LessonOutline(
                      imagePath: "assets/img-1.png",
                      title: "Order of Operations",
                      duration: "16.77 Min",
                      imageIcon: "assets/play.png",
                    ),
                    SizedBox(height: 10,),
                    LessonOutline(
                      imagePath: "assets/img.png",
                      title: "Order of Operations",
                      duration: "16.77 Min",
                      imageIcon: "assets/play.png",
                    )
                  ],
                ),
              ),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(26),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/lock.png", width: 30, height: 30),
                        SizedBox(width: 45.0),
                        Text(
                          "Unlock Course Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Image.asset("assets/arrow.png", width: 24, height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
