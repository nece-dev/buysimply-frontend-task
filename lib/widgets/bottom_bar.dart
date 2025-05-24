import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget BottomBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white38,
    type: BottomNavigationBarType.fixed,
    currentIndex: 3,
    items: [
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/svg/poker-cards.svg'),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Stack(
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset('assets/svg/fire.svg'),

            Positioned(
              right: -13,
              top: -1,
              child: Container(
                width: 16,
                height: 13,
                decoration: BoxDecoration(
                  color: Color(0xffB5B2FF),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ],
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Stack(
          clipBehavior: Clip.none,
          children: [
            SvgPicture.asset('assets/svg/chat.svg'),
            Positioned(
              right: -13,
              top: -4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: Color(0xffB5B2FF),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '10',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: SvgPicture.asset('assets/svg/User.svg', height: 44),
        label: '',
      ),
    ],
  );
}
