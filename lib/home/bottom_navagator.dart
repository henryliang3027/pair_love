import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    Key? key,
    required this.selectedIndex,
    required this.pageController,
  }) : super(key: key);

  final int selectedIndex;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    void onBottomItemTapped(int index) {
      pageController.jumpToPage(
        index,
      );
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.list_alt,
          ),
          label: 'AnimalList',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_outlined),
          label: 'Map',
          tooltip: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border_outlined),
          label: 'Favorite',
          tooltip: '',
        ),
      ],
      //if current page is account which is not list in bottom navigation bar, make all items grey color
      //assign a useless 0 as currentIndex for account page
      currentIndex: selectedIndex >= 3 ? 0 : selectedIndex,
      selectedItemColor: selectedIndex >= 3
          ? Theme.of(context).hintColor
          : Theme.of(context).primaryColor,
      unselectedItemColor: Theme.of(context).hintColor,
      onTap: onBottomItemTapped,
    );
  }
}
