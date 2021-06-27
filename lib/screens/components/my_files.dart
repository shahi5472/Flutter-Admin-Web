import 'package:flutter/material.dart';
import 'package:flutter_web_admin/constants.dart';
import 'package:flutter_web_admin/models/my_files.dart';
import 'package:flutter_web_admin/responsive.dart';
import 'package:flutter_web_admin/screens/components/file_info_card.dart';

class MyFiles extends StatelessWidget {
  MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Files',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical: defaultPadding,
                ),
              ),
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add New'),
            ),
          ],
        ),
        SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGrid(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGrid(),
          desktop: FileInfoCardGrid(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGrid extends StatelessWidget {
  final int? crossAxisCount;
  final double? childAspectRatio;

  FileInfoCardGrid({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount!,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio!,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FileInfoCard(
          info: demoMyFiles[index],
        );
      },
    );
  }
}
