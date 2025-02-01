import 'package:contest_project/core/components/app_bar_action_button.dart';
import 'package:contest_project/core/utiles/all_colors.dart';
import 'package:contest_project/core/utiles/all_images.dart';
import 'package:contest_project/core/utiles/all_texts.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/app_bar_content_section.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/item_element.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/items_box.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/tabbar_section.dart';
import 'package:contest_project/features/home_screen/presentation/widgets/vertical_offer_title_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = AllTexts.items;

  List pizzas = [
    ItemElement(
      hasVariation: true,
    ),
    ItemElement(
      hasVariation: false,
    )
  ];

  int clicked = 0;

  clickedButton(int index) {
    setState(() {
      clicked = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AllColors.backGrey,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: 56,
            expandedHeight: 208,
            backgroundColor: AllColors.deepPurple,
            pinned: true,
            actions: [
              AppBarActionButton(icon: AllImages.loveIcon),
              const SizedBox(width: 13),
              AppBarActionButton(icon: AllImages.searchIcon),
              const SizedBox(width: 7),
              AppBarActionButton(icon: AllImages.dotIcon),
              const SizedBox(width: 15)
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 208,
                        width: size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(AllImages.foodImage),
                              fit: BoxFit.cover),
                        ),
                      ),
                      // content heading done
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                AppBarContentSection(clicked: clicked, clickedFunc: clickedButton),
                ItemsBox(
                    title: AllTexts.pizza,
                    icon: AllImages.pizzaIcon,
                    items: pizzas),
                ItemsBox(
                    title: AllTexts.pizza,
                    icon: AllImages.pizzaIcon,
                    items: pizzas),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
