import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int initialIndex;
  final Function(int) onTap;

  const CustomBottomNavigation({
    required this.initialIndex,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: initialIndex,
      onTap: onTap,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/svgs/home.svg',
            height: 24,
            color: Colors.grey[700],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/svgs/explore.svg',
            height: 24,
            color: Colors.grey[700],
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/svgs/schedule.svg',
            height: 24,
            color: Colors.grey[700],
          ),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/svgs/profile.svg',
            height: 24,
            color: Colors.grey[700],
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
