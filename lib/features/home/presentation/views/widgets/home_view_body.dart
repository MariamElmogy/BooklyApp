import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custome_app_bar_home_view.dart';
import 'package:flutter/material.dart';
import 'best_seller_list_view_future_builder.dart';
import 'featured_books_list_view_future_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          // app bar for home view (logo and search icon)
          child: CustomAppBarHomeView(),
        ),
        SliverToBoxAdapter(
          // the featured books -> scrolling horizontal
          child: FeaturedBooksListViewFutureBuilder(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(top: 48.0, left: 20),
            child: Text(
              'Best Seller',
              style: Styles.titleMedium,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerViewFutureBuilder(),
        ),
      ],
    );
  }
}
