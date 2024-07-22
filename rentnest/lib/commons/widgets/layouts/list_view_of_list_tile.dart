import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/list_tiles/setting_menu_listtiles.dart';

class RSettingsMenuListOfTile extends StatelessWidget {
  const RSettingsMenuListOfTile({
    super.key,
    this.ontap,
    required this.titles,
    required this.subTitles,
    required this.icons,
    required this.trailings,
  });
  final List<String> titles, subTitles;
  final List<IconData> icons;
  final List<Widget?> trailings;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        titles.length,
        (index) => RSettingMenuListTile(
          icons: icons,
          titles: titles,
          subTitles: subTitles,
          trailings: trailings,
          ontap: ontap,
          index: index,
        ),
      ),
      // ListView.builder(
      //   shrinkWrap: true,
      //   physics: const NeverScrollableScrollPhysics(),
      //   itemCount: titles.length,
      //   itemBuilder: (_, index) => RSettingMenuListTile(
      //     icons: icons,
      //     titles: titles,
      //     subTitles: subTitles,
      //     trailings: trailings,
      //     ontap: ontap,
      //     index: index,
      //   ),
      // ),
    );
  }
}
