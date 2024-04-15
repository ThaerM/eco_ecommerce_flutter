import 'package:eco_store/common/widgets/appbar/appbar.dart';
import 'package:eco_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:eco_store/common/widgets/images/t_circular_image.dart';
import 'package:eco_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:eco_store/common/widgets/products/rounded_container.dart';
import 'package:eco_store/common/widgets/texts/search_heading.dart';
import 'package:eco_store/util/constants/color.dart';
import 'package:eco_store/util/constants/image_strings.dart';
import 'package:eco_store/util/constants/sizes.dart';
import 'package:eco_store/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Store',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          TCartCounterIcon(
            onPressed: () {},
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: THelperFunctions.isDarkMode(context)
                  ? TColors.dark
                  : TColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    /// -- Search bar
                    const SizedBox(height: TSizes.spaceBtwItems),
                    const TSearchContainer(
                      padding: EdgeInsets.zero,
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Feature Brands
                    TSectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: TSizes.spaceBtwItems / 1.5),

                    TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          /// --- Icons
                          TCircularImage(
                            image: TImages.clothIcon,
                            isNetworkImage: false,
                            backgroundColor: Colors.transparent,
                            overlayColor: THelperFunctions.isDarkMode(context)
                                ? TColors.white
                                : TColors.black,
                          ),

                          const SizedBox(width: TSizes.spaceBtwItems / 2),

                          /// Text
                          Column(
                            children: [],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
