import 'package:flutter/material.dart';
import 'widgets/splash_view_body.dart';
import '../../../home/presentation/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String id = 'splash_view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
