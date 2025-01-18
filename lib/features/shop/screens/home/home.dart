import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:juvenile/utils/constants/colors.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/container/HomeHeaderContainer.dart';
import '../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../common/widgets/products.cart/cart_menu_icon.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = JHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
                darkMode: darkMode,
                child: Column(
                  children: [
                    JHomeAppBar()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

