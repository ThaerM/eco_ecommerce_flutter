import 'package:eco_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:eco_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:eco_store/common/widgets/layout/grid_layout.dart';
import 'package:eco_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:eco_store/common/widgets/texts/search_heading.dart';
import 'package:eco_store/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:eco_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:eco_store/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:eco_store/util/constants/image_strings.dart';
import 'package:eco_store/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header
            const TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Searchbar
                  TSearchContainer(text: 'Search in Store'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        TSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false,
                            textColor: Colors.white),

                        SizedBox(height: TSizes.spaceBtwItems),

                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    /// -- Promo Slider
                    const TPromoSlider(
                      banners: [
                        TImages.banner1,
                        TImages.banner2,
                        TImages.banner3,
                        TImages.banner4,
                        TImages.banner5,
                        TImages.banner6,
                        TImages.banner7,
                        TImages.banner8,
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    /// Popular Product
                    TGridLayout(
                        itemCount: 4,
                        itemBuilder: (_, index) =>
                            const TProductCardVertical()),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
