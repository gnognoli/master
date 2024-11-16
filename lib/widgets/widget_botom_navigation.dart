import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WidgetBottomNavigationBar extends StatefulWidget {
  const WidgetBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _WidgetBottomNavigationBarState createState() =>
      _WidgetBottomNavigationBarState();
}

class _WidgetBottomNavigationBarState extends State<WidgetBottomNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(
              Icons.sports_soccer_rounded,
              size: 40.0,
              color: _selectedIndex == 0 ? Colors.black87 : Colors.grey,
            ),
            label: 'Matches'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_sharp,
              size: 40.0,
              color: _selectedIndex == 1 ? Colors.black87 : Colors.grey,
            ),
            label: 'Calandar'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.casino,
              size: 41.0,
              color: _selectedIndex == 2 ? Colors.black87 : Colors.grey,
            ),
            label: 'Tickets'),
      ],
      currentIndex: _selectedIndex,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedItemColor: Colors.black,
      onTap: _onItemTapped,
    );
  }
}
