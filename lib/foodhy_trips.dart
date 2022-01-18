import 'package:flutter/material.dart';
import 'Place/ui/screens/home_trips.dart';
import 'Place/ui/screens/search_trips.dart';
import 'profile_trips.dart';

class FoodhyTrips extends StatefulWidget {
  @override
  _FoodhyTripsState createState() => _FoodhyTripsState();
}

class _FoodhyTripsState extends State<FoodhyTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
              onTap: onTapTapped,
              currentIndex: indexTap,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
              ])),
    );
  }
}
