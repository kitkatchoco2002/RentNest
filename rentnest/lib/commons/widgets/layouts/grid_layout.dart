import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/sizes.dart';

class RGridLayout extends StatelessWidget {
  const RGridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 240,
    required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: RSizes.gridviewSpacing,
            crossAxisSpacing: RSizes.gridviewSpacing,
            mainAxisExtent: mainAxisExtent),
        itemBuilder: itemBuilder);
  }
}
