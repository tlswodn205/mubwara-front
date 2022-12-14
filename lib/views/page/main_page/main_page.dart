import 'package:flutter/material.dart';
import '../../component/bottom_nav_bar.dart';
import 'component/main_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _mainPageState();
}

class _mainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void selectedIndexChanged(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainBody(selectedIndex: _selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onIndexChanged: selectedIndexChanged,
      ),
    );
  }
}
