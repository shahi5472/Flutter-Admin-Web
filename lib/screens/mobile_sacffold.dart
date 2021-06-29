import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constants.dart';
import 'package:flutter_web_admin/screens/components/header.dart';
import 'package:flutter_web_admin/screens/components/slide_bar.dart';
import 'package:flutter_web_admin/screens/dashboard/dashboard_screen.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SlideBar(),
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: Header(),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
