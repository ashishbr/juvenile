import 'package:flutter/material.dart';

import 'cureved_edges.dart';

class JCurvedEdgesWidget extends StatelessWidget {
  const JCurvedEdgesWidget({
    super.key,
    required this.darkMode,
    this.child,
  });

  final bool darkMode;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: JCustomCurvedEdges(),
      child: child,
    );
  }
}
