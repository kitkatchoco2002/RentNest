import 'package:flutter/cupertino.dart';
import 'package:rentnest/commons/widgets/custom_shape/custom_edges/curved_edges.dart';

class RCurvedEdgesWidget extends StatelessWidget {
  const RCurvedEdgesWidget({
    super.key, this.child,
  });

  final Widget? child;
  
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RCustomCurvedEdges(),
      child: child
    );
  }
}

