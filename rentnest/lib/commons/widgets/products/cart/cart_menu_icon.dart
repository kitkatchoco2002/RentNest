import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';

class RCartCounterIcon extends StatelessWidget {
  const RCartCounterIcon({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: onPressed , icon: const Icon(Icons.favorite_rounded, color: RColors.white,)),
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

