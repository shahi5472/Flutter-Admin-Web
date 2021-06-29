import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constants.dart';
import 'package:flutter_web_admin/responsive.dart';
import 'package:flutter_web_admin/screens/components/header.dart';
import 'package:flutter_web_admin/screens/components/my_files.dart';
import 'package:flutter_web_admin/screens/components/recent_files.dart';
import 'package:flutter_web_admin/screens/components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            if (!Responsive.isMobile(context)) Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                        ),
                      if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
