import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/bottom_nav_bar/bottom_nav_bar.dart';
import '../controllers/bottom_nav_bar_controller.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  static const String id = '/main_screen';
  final PageStorageBucket bucket = PageStorageBucket();
  final BottomNavBarController bnbc = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavBarController>(
      builder: (bnbc) {
        return Scaffold(
          body: PageStorage(bucket: bucket, child: bnbc.currentScreen),
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
