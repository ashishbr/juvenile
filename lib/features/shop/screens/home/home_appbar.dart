import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/products.cart/cart_menu_icon.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/text_strings.dart';

class JHomeAppBar extends StatelessWidget {
  const JHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return JAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(JTexts.nameAppBarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: JColors.grey)),
          Text(
            JTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: JColors.white),
          )
        ],
      ),
      actions: [
        JCartCounterIcon(onPressed: () {  }, iconColor: JColors.white,)
      ],
    );
  }
}