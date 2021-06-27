import 'package:flutter/material.dart';
import 'package:flutter_web_admin/screens/components/drawer_list_tile.dart';

class SlideBar extends StatelessWidget {
  const SlideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/logo.png'),
            ),
            DrawerListTile(
              title: 'Dashboard',
              svgIcon: 'assets/icons/menu_dashbord.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Transaction',
              svgIcon: 'assets/icons/menu_tran.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Task',
              svgIcon: 'assets/icons/menu_task.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Documents',
              svgIcon: 'assets/icons/menu_doc.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Store',
              svgIcon: 'assets/icons/menu_store.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Notification',
              svgIcon: 'assets/icons/menu_notification.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Profile',
              svgIcon: 'assets/icons/menu_profile.svg',
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              svgIcon: 'assets/icons/menu_setting.svg',
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
