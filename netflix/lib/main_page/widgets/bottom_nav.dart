import 'package:flutter/material.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexchangenotifier,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
          onTap: (value) {
            indexchangenotifier.value = value;
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: newIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: const IconThemeData(
            color: Colors.white,
          ),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              label: 'New & Hot',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions),
              label: 'Fast laughs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Downloads',
            ),
          ],
        );
      },
    );
  }
}
