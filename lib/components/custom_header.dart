import 'package:flutter/material.dart';

import '../app_data.dart';
import 'cookbooks/my_text.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return MyText(
      text: title,
      textStyle: TextStyle(
        color: AppData.primaryFontColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      containerAlignment: Alignment.centerLeft,
      containerPadding: const EdgeInsets.only(left: 7, bottom: 10),
    );
  }
}
