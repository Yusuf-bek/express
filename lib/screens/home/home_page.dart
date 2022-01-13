import 'package:express/screens/home/componenets/ads_contianer_function.dart';
import 'package:express/screens/home/componenets/expandedthree/main_part.dart';
import 'package:express/screens/home/componenets/search_and_location.dart';
import 'package:flutter/material.dart';

class MainHomePage extends StatefulWidget {
  MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCCCCCD),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: searchAndLocation(context),
          ),
          Expanded(
            flex: 4,
            child: adsContainerFunction(context),
          ),
          Expanded(
            flex: 13,
            child: thirdExpanded(context),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded), label: "Profiles"),
        ],
        onTap: (v) {
          setState(() {
            _selectedPageIndex = v;
          });
        },
      ),
    );
  }
}
