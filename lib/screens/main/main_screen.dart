import 'package:flutter/material.dart';
import 'package:flutter_web_admin/screens/components/slide_bar.dart';
import 'package:flutter_web_admin/screens/dashboard/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //For slide nav bar
            Expanded(
              child: SlideBar(),
            ),
            //for body of the main part
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
