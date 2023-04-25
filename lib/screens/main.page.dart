import 'package:MastersApp/screens/settings.page.dart';
import 'package:MastersApp/shared/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget{
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Text(
      'home'.tr,
    ),
    Text(
      'newHabit'.tr,
    ),
    Text(
      'achievements'.tr,
    ),
    const SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      if(_selectedIndex != index){
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: 'home'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.add),
              label: 'newHabit'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.abc),
              label: 'achievements'.tr,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'settings'.tr,
            ),
          ],
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: kprimaryColor,
          unselectedItemColor: ksecondryLightColor,
          onTap: _onItemTapped,
        ),
    );
  }
}