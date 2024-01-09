import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../models/book_model.dart';
import '../../../../../utils/book_api_service.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.newsBookService) : super(NewestBooksInitial());

  BooksApiService newsBookService;

  List<BookModel>? bookModel;

  Future<void> fetchNewsBooks() async {
    emit(NewestBooksLoading());
    try {
      bookModel = await BooksApiService.fetchFeaturedBooks();
      emit(NewestBooksSuccess(bookModel!));
    } on Exception catch (e) {
      emit(NewestBooksFailure(e.toString()));
    }
  }
}
