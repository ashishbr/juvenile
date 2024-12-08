import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class HomeHeaderContainer extends StatelessWidget {
  const HomeHeaderContainer({
    super.key,
    required this.darkMode,
    this.child,
  });

  final bool darkMode;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return JCurvedEdgesWidget(
      darkMode: darkMode,
      child: Container(
        color: darkMode ? JColors.primary : Colors.green,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                  top: -100,
                  right: -300,
                  child: JCircularContainer(
                    backgroundColor: JColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: -300,
                  child: JCircularContainer(
                    backgroundColor: JColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  right: 300,
                  child: JCircularContainer(
                    backgroundColor: JColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: -100,
                  right: 300,
                  child: JCircularContainer(
                    backgroundColor: JColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: -300,
                  child: JCircularContainer(
                    backgroundColor: JColors.textWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: 300,
                  child: JCircularContainer(
                    backgroundColor: JColors.textWhite.withOpacity(0.1),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
