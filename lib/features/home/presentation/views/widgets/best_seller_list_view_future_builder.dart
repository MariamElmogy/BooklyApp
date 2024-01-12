import 'package:bookly_app/core/utils/book_api_service.dart';
import 'package:bookly_app/features/home/cubits/home_cubit/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'best_seller_list_view.dart';

class BestSellerViewFutureBuilder extends StatelessWidget {
  const BestSellerViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewestBooksCubit(BooksApiService()),
      child: FutureBuilder(
        future: BooksApiService.fetchNewsBooks(),
        builder: (context, snapshot) {
          if (!snapshot.hasError) {
            if (snapshot.connectionState == ConnectionState.done) {
              return BestSellerListView(
                books: snapshot.data!,
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          } else {
            return Text(
              snapshot.error.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            );
          }
        },
      ),
    );
  }
}
