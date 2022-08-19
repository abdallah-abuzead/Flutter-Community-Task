import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../app_data.dart';
import '../../controllers/bottom_nav_bar_controller.dart';

class NavBarItem extends StatelessWidget {
  NavBarItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.tabIndex,
    this.isFa = false,
  }) : super(key: key);
  final bool isFa;
  final IconData icon;
  final String label;
  final int tabIndex;
  final BottomNavBarController bnbc = Get.find();

  @override
  Widget build(BuildContext context) {
    bool isSelected = bnbc.currentTabIndex == tabIndex;
    return Expanded(
      child: TextButton(
        onPressed: () => bnbc.currentTabIndex = tabIndex,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isFa
                ? FaIcon(icon, size: 22, color: isSelected ? AppData.mainColor : AppData.secondaryFontColor)
                : Icon(icon, size: 28, color: isSelected ? AppData.mainColor : AppData.secondaryFontColor),
            SizedBox(height: isFa ? 8 : 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                color: isSelected ? AppData.mainColor : AppData.secondaryFontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
