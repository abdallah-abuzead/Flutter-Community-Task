import 'package:community/components/custom_header.dart';
import 'package:flutter/material.dart';

import '../cards/individuals_card.dart';
import '../cards/others_card.dart';

class MembersSection extends StatelessWidget {
  const MembersSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0XFFE3E3E3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const CustomHeader(title: 'Members'),
          Expanded(
            child: Row(
              children: const [
                IndividualsCard(),
                SizedBox(width: 8),
                OthersCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
