// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:google_design_system/design/foundation/widgets/molecules/google_left_side_bar_tile.dart';
import 'package:google_design_system/google_design_system.dart';

class LeftSideBarTileModel {
  final IconData icon;
  final String title;

  LeftSideBarTileModel({
    required this.icon,
    required this.title,
  });
}

class GoogleLeftSideBar extends StatelessWidget {
  final GoogleFloatingActionButton floatingActionButton;
  final List<LeftSideBarTileModel> leftSideBarTileList;

  const GoogleLeftSideBar({
    required this.floatingActionButton,
    required this.leftSideBarTileList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        floatingActionButton,
        const SizedBox(height: 16),
        ...leftSideBarTileList.map(
          (element) => GoogleLeftSideBarTile(
            icon: element.icon,
            title: element.title,
          ),
        ),
      ],
    );
  }
}