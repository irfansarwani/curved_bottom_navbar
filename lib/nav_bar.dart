import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          items: const <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.add, size: 30),
            Icon(Icons.share, size: 30),
            Icon(Icons.perm_identity, size: 30),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.deepPurple,
          animationCurve: Easing.legacy,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {});
          },
          letIndexChange: (index) => true,
        ),
        body: Container(
          color: Colors.deepPurple,
          child: const Center(child: Column()),
        ));
  }
}
