import 'package:contest_project/core/components/add_to_cart_section.dart';
import 'package:contest_project/core/components/back_icon_button.dart';
import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/features/food_view_screen/presentation/widgets/special_request_section.dart';
import 'package:contest_project/features/food_view_screen/presentation/widgets/top_section.dart';
import 'package:contest_project/features/food_view_screen/presentation/widgets/veriation_section.dart';
import 'package:flutter/material.dart';

class FoodViewScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  FoodViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AllColors.backGrey,
      bottomNavigationBar: Visibility(
        visible: size.height >450,
          child: AddToCartSection(),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
              leading: BackIconButton(),
              expandedHeight: 208,
            collapsedHeight: 56,
            pinned: true,
            backgroundColor: AllColors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                AllImages.foodImage,
                width: size.width,
                fit: BoxFit.cover
              ),
            )
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TopSection(),
                VeriationSection(),
                const SizedBox(height: 8),
                SpecialRequestSection(),
                // this will visible when the height of the screen will be less then 450
                // add to cart
                Visibility(
                  visible: size.height < 450,
                    child: AddToCartSection(),
                )
              ]
            )
          )
        ],
      )
    );
  }
}
