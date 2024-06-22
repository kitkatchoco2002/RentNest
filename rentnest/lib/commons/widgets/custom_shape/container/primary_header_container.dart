import 'package:flutter/cupertino.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/circular_container.dart';
import 'package:rentnest/commons/widgets/custom_shape/custom_edges/curved_edges_widgets.dart';
import 'package:rentnest/utils/constants/colors.dart';

class RPrimaryHeaderContainer extends StatelessWidget {
  const RPrimaryHeaderContainer({
    super.key, required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return RCurvedEdgesWidget(child: Container(
      color: RColors.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(top: -150,right: -250,child: RCircularContainer(height: 400,width: 400,radius: 400,padding: 0,backgroundColor: RColors.accent.withOpacity(0.1))),
            Positioned(top: 100,right: -300,child: RCircularContainer(height: 400,width: 400,radius: 400,padding: 0,backgroundColor: RColors.accent.withOpacity(0.1))),
            child
          ],
        ),
      ),
    ),);
  }
}
