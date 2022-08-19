import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'nav_bar_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 20,
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarItem(icon: Icons.groups_outlined, label: 'Community', tabIndex: 0),
            NavBarItem(icon: Icons.calendar_month_outlined, label: 'Events', tabIndex: 1),
            NavBarItem(
                icon: FontAwesomeIcons.bullhorn, label: 'Job Calls', tabIndex: 2, isFa: true), //bullhorn
            NavBarItem(icon: Icons.notification_important_outlined, label: 'Notifications', tabIndex: 3),
            NavBarItem(icon: Icons.person_outline_outlined, label: 'Profile', tabIndex: 4),
          ],
        ),
      ),
    );
  }
}
