import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../models/book_model.dart';
import '../../../../../utils/book_api_service.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.similarBookService, this.bookModel) : super(SimilarBooksInitial());

  BooksApiService similarBookService;

  final BookModel bookModel;

  Future<void> fetchSimialrBooks() async {
    emit(SimilarBooksLoading());
    try {
      await BooksApiService.fetchSimilarBooks(bookModel.category![0]);
      emit(SimilarBooksSuccess(bookModel.category![0]));
    } on Exception catch (e) {
      emit(SimilarBooksFailure(e.toString()));
    }
  }
  
}
