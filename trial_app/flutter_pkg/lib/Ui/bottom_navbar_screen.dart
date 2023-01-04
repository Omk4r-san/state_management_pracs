import 'package:flutter/material.dart';

enum TabItem { home, search, bookMarks, profile }

class BottomNavBarScreen extends StatefulWidget {
  final Widget Function(BuildContext, TabItem) builder;
  const BottomNavBarScreen({super.key, required this.builder});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  TabItem _currentTab = TabItem.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widget.builder(context, _currentTab),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: (tab) => setState(() {
            _currentTab = tab;
          }),
        ));
  }
}

class BottomNavigation extends StatelessWidget {
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  const BottomNavigation(
      {super.key, required this.currentTab, required this.onSelectTab});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentTab.index,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
          label: '',
        ),
      ],
      onTap: (selectedIndex) => onSelectTab(TabItem.values[selectedIndex]),
    );
  }
}
