import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  final int currentPageIndex;
  final Function(int) onTabSelected;

  const BottomNavigationBarWidget({
    super.key,
    required this.currentPageIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white, // Fondo negro
      selectedIndex: currentPageIndex,
      onDestinationSelected: onTabSelected,
      destinations: const [
        NavigationDestination(
          selectedIcon: Icon(Icons.home_filled, color: Color.fromARGB(255, 0, 0, 0)),
          icon: Icon(Icons.home_filled, color: Colors.black,),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.search, color: Colors.black,),
          icon: Icon(Icons.search, color: Colors.black,),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.browser_not_supported, color: Colors.black),
          icon: Icon(Icons.browser_not_supported, color: Colors.black,),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.group_rounded, color: Colors.black),
          icon: Icon(Icons.group_rounded, color:Colors.black),
          label: '',
        ),
        NavigationDestination(
          selectedIcon:
              Icon(Icons.notifications_none_rounded, color:Colors.black),
          icon: Icon(Icons.notifications_none_rounded, color: Colors.black),
          label: '',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.mail_outline, color: Colors.black,),
          icon: Icon(Icons.mail_outline, color:Colors.black),
          label: '',
        ),
      ],
    );
  }
}
