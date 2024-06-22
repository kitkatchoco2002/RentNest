import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/appbar/appbar.dart';
import 'package:rentnest/commons/widgets/products/cart/cart_menu_icon.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/text_strings.dart';

class RHomeAppBar extends StatelessWidget {
  const RHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(RTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: RColors.grey)),
          Text(RTexts.homeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.accent))
        ],
      ),
      actions: [
        RCartCounterIcon(onPressed: () {},)
        
      ],
    );
  }
}
