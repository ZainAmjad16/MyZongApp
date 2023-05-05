import 'package:flutter/material.dart';
import './profile.dart';

class bottom_nav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _bottom_nav();
  }
}

class _bottom_nav extends State<bottom_nav> {
  List<Widget> body_list = [
    Center(
      child: Text('List'),
    ),
    Center(
      child: Text('Search'),
    ),
    profile(),
    Center(
      child: Text('Menu'),
    ),
  ];

  int current_index = 0;
  void ontabitem(int index) {
    setState(() {
      current_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: body_list[current_index],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.amber,
          currentIndex: current_index,
          onTap: ontabitem,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.list),
              label: 'List',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.amber,
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
          ]),
    );
  }
}
