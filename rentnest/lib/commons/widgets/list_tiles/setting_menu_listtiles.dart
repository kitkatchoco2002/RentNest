import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';

class RSettingMenuListTile extends StatelessWidget {
  const RSettingMenuListTile({
    super.key,
    required this.icons,
    required this.titles,
    required this.subTitles,
    required this.trailings,
    required this.ontap,
    required this.index,
  });

  final int index;
  final List<IconData> icons;
  final List<String> titles;
  final List<String> subTitles;
  final List<Widget?> trailings;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icons[index], color: RColors.primary, size: 28),
      title: Text(titles[index], style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitles[index], style: Theme.of(context).textTheme.labelMedium),
      trailing: trailings[index],
      onTap: ontap,
    );
  }
}
