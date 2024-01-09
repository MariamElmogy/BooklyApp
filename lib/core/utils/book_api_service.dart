import 'package:dio/dio.dart';
import '../models/book_model.dart';

 class BooksApiService {
  static const String _apiBaseUrl = "https://www.googleapis.com/books/v1";

  static Future<List<BookModel>> fetchFeaturedBooks() async {
    try {
      final dio = Dio();
      var response = await dio.get('$_apiBaseUrl/volumes?q=programming');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      if (e is DioError) {
        // is used for checking the type
        var errMessage = e.response?.data['error']['message'] ??
            'Something went wrong: try later';
        // ? --> dont access the data if response = null
        // ! --> must return null while it is optional
        throw Exception(errMessage);
      }
      throw Exception('Something went wrong');
    }
  }

  static Future<List<BookModel>> fetchSimilarBooks(String category) async {
    try {
      final dio = Dio();
      var response = await dio.get('$_apiBaseUrl/volumes?q=$category');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      if (e is DioError) {
        // is used for checking the type
        var errMessage = e.response?.data['error']['message'] ??
            'Something went wrong: try later';
        // ? --> dont access the data if response = null
        // ! --> must return null while it is optional
        throw Exception(errMessage);
      }
      throw Exception('Something went wrong');
    }
  }

  static Future<List<BookModel>> fetchNewsBooks() async {
    try {
      final dio = Dio();
      var response = await dio
          .get('$_apiBaseUrl/volumes?Sorting=newest &q=computer science');

      List<BookModel> books = parseData(response);
      return books;
    } catch (e) {
      throw Exception('Something went wrong');
    }
  }

  static List<BookModel> parseData(Response<dynamic> response) {
    List<BookModel> books = [];
    var items = response.data['items'];
    for (var bookMap in items) {
      try {
        books.add(BookModel.fromJson(bookMap));
      } catch (e) {
        books.add(BookModel.fromJson(bookMap));
      }
    }
    return books;
  }
}
