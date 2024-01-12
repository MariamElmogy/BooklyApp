import 'package:flutter/material.dart';

import '../home_view.dart';

class CustomAppBarClickedBook extends StatelessWidget {
  const CustomAppBarClickedBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomeView.id);
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
