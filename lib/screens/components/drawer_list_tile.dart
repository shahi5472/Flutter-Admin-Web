import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key? key,
    @required this.title,
    @required this.svgIcon,
    @required this.onPress,
  }) : super(key: key);

  String? title, svgIcon;
  VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      horizontalTitleGap: 0,
      leading: SvgPicture.asset(
        '$svgIcon',
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        '$title',
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
