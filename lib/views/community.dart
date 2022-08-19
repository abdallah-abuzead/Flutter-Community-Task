import 'package:community/views/sections/members_section.dart';
import 'package:community/views/sections/updates_section.dart';
import 'package:flutter/material.dart';

import 'cards/header_section.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderSection(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(5),
                children: const [
                  UpdatesSection(),
                  SizedBox(height: 20),
                  UpdatesSection(isActivity: true),
                  SizedBox(height: 20),
                  MembersSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
