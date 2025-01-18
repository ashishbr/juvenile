import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';

class JCartCounterIcon extends StatelessWidget {
  const JCartCounterIcon({
    super.key, required this.onPressed, required this.iconColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(Iconsax.shopping_bag4,
                color: iconColor)),
        Container(
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            color: JColors.black.withOpacity(0.7),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: JColors.white, fontSizeFactor: 0.8), ),
          ),
        )
      ],
    );
  }
}
