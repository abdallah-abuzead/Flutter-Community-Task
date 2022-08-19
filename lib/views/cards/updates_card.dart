import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../components/scrolling_text.dart';

class UpdatesCard extends StatelessWidget {
  const UpdatesCard({Key? key, this.isActivity = false}) : super(key: key);
  final bool isActivity;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      margin: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.only(right: 15),
        decoration: BoxDecoration(color: const Color(0XFFF5F5F5), borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: [
            Card(
              elevation: 3,
              borderOnForeground: false,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
              child: const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: FaIcon(FontAwesomeIcons.shapes, color: Color(0XFFC9C9C9), size: 30),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: isActivity ? 5 : 12),
                  const Text('Friend name', style: TextStyle(fontSize: 16)),
                  SizedBox(height: isActivity ? 20 : 15),
                  isActivity
                      ? const Text(
                          'Last Activity',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      : Container(
                          height: 25,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.only(left: 5),
                          decoration: BoxDecoration(
                            color: const Color(0XFFD1D1D1),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const ScrollingText(
                            text: 'Your friend last updates. Your friend last updates.',
                            textStyle: TextStyle(),
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
