import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/userprofile_controller.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.controller,
  });

  final UserprofileController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          // make it round
          height: 7.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: BottomNavigationBar(
              // change the color of bottom navigation bar
              // elevation: 1.0,
              backgroundColor: Colors.black,
              currentIndex: controller.selectedIndex.value,
              selectedItemColor:
                  Colors.red, // Change this to your preferred color

              unselectedItemColor: Colors.white,
              onTap: (int index) {
                controller.selectedIndex.value = index;
                switch (index) {
                  case 0:
                    Get.toNamed('/home');
                    break;
                  case 1:
                    // Get.toNamed('/searchpage');
                    break;
                  case 2:
                    Get.toNamed('/login');
                    break;
                  case 3:
                    Get.toNamed('/profile');
                    break;
                }
              },
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.black),
                  label: '',
                  // backgroundColor:
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month, color: Colors.black),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.notifications, color: Colors.black),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person, color: Colors.black),
                  label: '',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
