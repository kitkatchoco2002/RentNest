import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';

class RCartCounterIcon extends StatelessWidget {
  const RCartCounterIcon({
    super.key, required this.onPressed, required this.icon,
  });

  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed , icon: icon),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: RColors.black,
              borderRadius: BorderRadius.circular(100)
            ),
            child: Center(child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: RColors.white, fontSizeFactor: 0.8),),),
          ),
        )
      ],
    );
  }
}

