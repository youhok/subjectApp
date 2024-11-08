import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/widget/Offer_card.dart';
import 'package:test/widget/subject.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Asil",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "Find your course",
                        style: TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/btn_search.png",
                    width: 44, // Set the desired width
                    height: 44, // Set the desired height
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              OfferCard(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Subject",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Subject()
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(26.0),
    topRight: Radius.circular(26.0),
  ),
  child: BottomNavigationBar(
    currentIndex: _selectedIndex,
    onTap: _onItemTapped,
    backgroundColor: Colors.grey[200],
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.grey,
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.work),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: '',
      ),
    ],
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),
),

    );
  }
}




