import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';

class Homescreen extends StatelessWidget {
  static const String routeName = 'homescreen_route';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /*background image*/
          Image.asset('assets/images/quran_bg.png',
            height: double.infinity,
            width: double.infinity,
            fit:BoxFit.cover,),
          Scaffold(
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(
                canvasColor: AppColors.primaryDark
              ),
              child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset('assets/images/icon_quran.png',),
                    label: 'Quran'
                  ),
                  BottomNavigationBarItem(
                      icon: Image.asset('assets/images/icon_hadith.png',),
                      label: 'Quran'
                  ),
                  BottomNavigationBarItem(
                      icon: Image.asset('assets/images/icon_sebha.png',),
                      label: 'Quran'
                  ),
                  BottomNavigationBarItem(
                      icon: Image.asset('assets/images/icon_radio.png',),
                      label: 'Quran'
                  ),
                  BottomNavigationBarItem(
                      icon: Image.asset('assets/images/icon_time.png',),
                      label: 'Quran'
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
