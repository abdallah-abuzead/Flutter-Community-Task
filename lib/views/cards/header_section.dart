import 'package:flutter/material.dart';

import '../../app_data.dart';
import '../../components/cookbooks/my_text.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText(
          text: 'Community',
          textStyle: TextStyle(
            color: AppData.primaryFontColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          containerAlignment: Alignment.centerLeft,
          containerPadding: const EdgeInsets.only(left: 20, top: 10, bottom: 15),
        ),
        // SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildElevatedButton(text: 'Discover', hasBorder: true),
            buildElevatedButton(text: 'Community'),
          ],
        ),
      ],
    );
  }

  Widget buildElevatedButton({required String text, bool hasBorder = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
          shape: StadiumBorder(side: hasBorder ? const BorderSide(color: Colors.black) : BorderSide.none),
          primary: hasBorder ? Colors.white : Colors.black,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: hasBorder ? Colors.black : Colors.white,
          ),
        ),
      ),
    );
  }
}
