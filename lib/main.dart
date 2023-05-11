import 'package:bookly_app/utils/app_colors.dart';
import 'package:bookly_app/features/home/views/home_view.dart';
import 'package:bookly_app/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';

main() async {
  runApp(const BoobklyApp());
}

class BoobklyApp extends StatelessWidget {
  const BoobklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kPrimaryColor,
      ),
      routes: {
        SplashView.id: (context) => const SplashView(),
        HomeView.id: (context) => const HomeView(),
      },
      initialRoute: SplashView.id,
      debugShowCheckedModeBanner: false,
      title: 'Bookly',
    );
  }
}
