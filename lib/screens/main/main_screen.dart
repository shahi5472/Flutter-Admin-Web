import 'package:flutter/material.dart';
import 'package:flutter_web_admin/controllers/menu_controller.dart';
import 'package:flutter_web_admin/responsive.dart';
import 'package:flutter_web_admin/screens/components/slide_bar.dart';
import 'package:flutter_web_admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter_web_admin/screens/mobile_sacffold.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context) || Responsive.isTablet(context))
      return Scaffold(
        key: context.read<MenuController>().scaffoldKey,
        drawer: SlideBar(),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //For slide nav bar
              if (Responsive.isDesktop(context))
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
    else
      return MobileScreen();
  }
}
