import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/tabs/hadith_tab/hadith_tab.dart';
import 'package:islami_app/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/tabs/time_tab/time_tab.dart';

class Homescreen extends StatefulWidget {
  static const String routeName = 'homescreen_route';

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int selectedIndex = 0 ;

  List<String> backGroundImages = [
    'assets/images/quran_bg.png',
    'assets/images/hadith_bg.png',
    'assets/images/sebha_bg.png',
    'assets/images/radio_bg.png',
    'assets/images/time_bg.png',
  ];

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*background image*/
          Image.asset(backGroundImages[selectedIndex],
            height: double.infinity,
            width: double.infinity,
            fit:BoxFit.cover,),
          tabs[selectedIndex],
          Scaffold(
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: AppColors.primaryDark,
                bottomNavigationBarTheme: BottomNavigationBarThemeData(
                  selectedIconTheme: IconThemeData(color: Colors.white)
                )
              ),
              child: BottomNavigationBar(
                selectedItemColor: AppColors.white,
                unselectedItemColor: AppColors.black,
                currentIndex: selectedIndex,
                // selectedIconTheme: IconThemeData(
                //   color: AppColors.white,
                // ),
                // unselectedIconTheme: IconThemeData(
                //     color: AppColors.white
                // ),
                onTap: (index){selectedIndex = index; setState(() {

                });},
                showUnselectedLabels: true,
                items: [
                  BottomNavigationBarItem(
                      icon: bottomBarItemBuilder(index: 0, name: 'time'),
                    label: 'Quran'
                  ),
                  BottomNavigationBarItem(
                      icon: bottomBarItemBuilder(index: 1, name: 'hadith'),
                      label: 'Hadith'
                  ),
                  BottomNavigationBarItem(
                      icon: bottomBarItemBuilder(index: 2, name: 'sebha'),
                      label: 'Sebha'
                  ),
                  BottomNavigationBarItem(
                      icon: bottomBarItemBuilder(index: 3, name: 'radio'),
                      label: 'Radio'
                  ),
                  BottomNavigationBarItem(
                      icon: bottomBarItemBuilder(index: 4, name: 'time'),
                      label: 'Time'
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomBarItemBuilder({required int index, required String name}){
    return index == selectedIndex? Container(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 22),
        decoration: BoxDecoration(
          color: AppColors.blackBg,
          borderRadius: BorderRadius.circular(22)
        ),
          child: Image.asset('assets/images/icon_$name.png',
          color: AppColors.white,),
      ),
    )
    :
    Image.asset('assets/images/icon_$name.png',
    color: AppColors.black,)
    ;
  }
}
