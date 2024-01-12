import 'package:flutter/material.dart';

import '../../../../utils/app_images.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AppImages.kLogo, height: 18),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // 3ayza a3ml widget searchView
            },
          ),
        ],
      ),
    );
  }
}
