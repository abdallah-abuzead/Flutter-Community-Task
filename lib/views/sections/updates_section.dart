import 'package:community/components/custom_header.dart';
import 'package:flutter/material.dart';

import '../cards/updates_card.dart';

class UpdatesSection extends StatelessWidget {
  const UpdatesSection({Key? key, this.isActivity = false}) : super(key: key);
  final bool isActivity;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
      decoration: BoxDecoration(
        color: const Color(0XFFE3E3E3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CustomHeader(title: isActivity ? 'Activity' : 'Updates'),
          UpdatesCard(isActivity: isActivity),
          const SizedBox(height: 10),
          UpdatesCard(isActivity: isActivity),
          const SizedBox(height: 10),
          UpdatesCard(isActivity: isActivity),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [TextButton(onPressed: () {}, child: const Text('See more...'))],
          ),
        ],
      ),
    );
  }
}
