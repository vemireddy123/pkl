import 'package:flutter/material.dart';
import 'package:pklocalapp/screens/home_sceeen.dart';
import 'package:pklocalapp/screens/live_sceen.dart';
import 'package:pklocalapp/screens/news_grid_list.dart';

class BNavegation extends StatefulWidget {
  @override
  _BNavegationState createState() => _BNavegationState();
}

class _BNavegationState extends State<BNavegation> {
  final tabs = [
    HomeScreen(),
    // Center(
    //   child: Text(
    //     'Home',
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'grid',
    //   ),
    // ),
    NewsGridScreen(),
    // Center(
    //   child: Text(
    //     'Live',
    //   ),
    // ),
    LiveGridScreen(),
    Center(
      child: Text(
        'memes',
      ),
    ),
    Center(
      child: Text(
        'Profile',
      ),
    ),
  ];
  int _currenrIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Pakka Local'),
      //   backgroundColor: Colors.red,
      // ),
      body: tabs[_currenrIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currenrIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              title: Text('Top News'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              title: Text('Live'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.mood),
              title: Text('MEMEs'),
              backgroundColor: Colors.orange),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profiel'),
              backgroundColor: Colors.red),
        ],
        onTap: (index) {
          setState(() {
            _currenrIndex = index;
          });
        },
      ),
    );
  }
}
