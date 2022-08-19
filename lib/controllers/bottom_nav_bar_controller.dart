import 'package:community/views/Job_calls.dart';
import 'package:community/views/community.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/events.dart';
import '../views/notifications.dart';
import '../views/profile.dart';

class BottomNavBarController extends GetxController {
  RxInt _currentTabIndex = 0.obs;
  final List<Widget> _screens = [
    const Community(),
    const Events(),
    const JobCalls(),
    const Notifications(),
    const Profile()
  ];

  int get currentTabIndex => _currentTabIndex.value;

  void set currentTabIndex(int index) {
    _currentTabIndex = RxInt(index);
    update();
  }

  Widget get currentScreen => _screens[_currentTabIndex.value];
}
