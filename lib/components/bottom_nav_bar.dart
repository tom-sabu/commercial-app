import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        padding: EdgeInsets.all(16),
        // Use full absolute path for GNav if it's not imported directly.
        color: Colors.grey[800],
        // Example color, adjust as needed.
        activeColor: Colors.grey[700],
        // Example color, adjust as needed.
        tabMargin: EdgeInsets.symmetric(horizontal: 32),
        // Controls the space between GButton widgets.
        tabBackgroundColor: Colors.grey[100]!,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 12,
        onTabChange: (value) => onTabChange!(value),
        tabs: const [
          GButton(icon: Icons.home, text: 'Shop'),
          GButton(icon: Icons.shopping_bag_rounded, text: 'Cart'),
        ],
      ),
    );
  }
}
