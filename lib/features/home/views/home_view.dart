import 'package:bookly_app/features/home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String id = 'homeView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
