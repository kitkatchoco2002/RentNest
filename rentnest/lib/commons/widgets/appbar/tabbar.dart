import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/device/device_utility.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RTapBar extends StatelessWidget implements PreferredSizeWidget {
  const RTapBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = RHelperFunctions.isDarkmode(context);
    return Material(
      color: dark ? RColors.black : RColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        isScrollable: true,
        indicatorColor: RColors.primary,
        unselectedLabelColor: RColors.darkgrey,
        labelColor: RHelperFunctions.isDarkmode(context)? RColors.white : RColors.black,
        tabs: tabs),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(RDeviceUtils.getAppBarHeight());
}
