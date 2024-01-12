import 'package:bookly_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          const Spacer(),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
            onPressed: () {
              // widget searchView
            },
          ),
        ],
      ),
    );
  }
}
