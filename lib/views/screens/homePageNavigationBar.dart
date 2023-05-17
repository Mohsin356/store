
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:store/utils/colors.dart';
import 'package:store/views/screens/Home.dart';
import 'package:store/views/screens/profile.dart';
import 'package:store/views/screens/search.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const SearchScreen(),
    const Text(
      'Orders',
      style: optionStyle,
    ),
   const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBgClr,

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: AppColors.hoverClr,
              hoverColor: AppColors.hoverClr,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppColors.tabBgClr,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  textSize: 12,
                  iconSize: 20,
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  textSize: 12,
                  iconSize: 20,
                ),
                GButton(
                  icon: LineIcons.shoppingBag,
                  text: 'Order',
                  textSize: 12,
                  iconSize: 20,
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'User',
                  textSize: 12,
                  iconSize: 20,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
