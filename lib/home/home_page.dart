import 'package:flutter/material.dart';
import 'package:pair_love/animal_list/view/animal_list_page.dart';
import 'package:pair_love/animal_map/view/animal_map_page.dart';
import 'package:pair_love/home/bottom_navagator.dart';
import 'package:pair_love/my_favorite/view/my_favorite_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        children: const [
          AnimalListPage(),
          AnimalMapPage(),
          MyFavoritePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigator(
        selectedIndex: _currentIndex,
        pageController: _pageController,
      ),
    );
  }
}
