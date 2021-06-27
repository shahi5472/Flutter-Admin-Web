import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constants.dart';
import 'package:flutter_web_admin/screens/components/chart.dart';
import 'package:flutter_web_admin/screens/components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgIcon: 'assets/icons/Documents.svg',
            type: 'Documents Files',
            totalFiles: '1329',
            useGB: '1.3',
          ),
          StorageInfoCard(
            svgIcon: 'assets/icons/media.svg',
            type: 'Media Files',
            totalFiles: '1429',
            useGB: '15.3',
          ),
          StorageInfoCard(
            svgIcon: 'assets/icons/folder.svg',
            type: 'Other Files',
            totalFiles: '1229',
            useGB: '12.3',
          ),
          StorageInfoCard(
            svgIcon: 'assets/icons/unknown.svg',
            type: 'Unknown Files',
            totalFiles: '129',
            useGB: '1.2',
          ),
        ],
      ),
    );
  }
}
