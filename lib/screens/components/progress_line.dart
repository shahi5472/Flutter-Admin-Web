import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constants.dart';


class ProgressLine extends StatelessWidget {
  final Color? color;
  final int? percentage;

  ProgressLine({
    Key? key,
    this.color = primaryColor,
    @required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        LayoutBuilder(builder: (context, constraints) {
          return Container(
            height: 5,
            width: constraints.maxWidth * (percentage! / 100),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          );
        }),
      ],
    );
  }
}