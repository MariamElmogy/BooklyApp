import 'package:bookly_app/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeViewCustomAppBar extends StatelessWidget {
  const HomeViewCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.kLogo, height: 18),
          IconButton(
            icon: const Icon(Icons.search,
                color: Colors.white), // add the search icon
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
