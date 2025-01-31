import 'package:flutter/material.dart';

class FoodViewScreen extends StatelessWidget {
  const FoodViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              leading: BackButtonIcon(),
          )
        ],
      )
    );
  }
}
