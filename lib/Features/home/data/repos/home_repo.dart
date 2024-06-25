import 'package:bookly/Features/home/data/models/BookModel.dart';

abstract class HomeRepo{
  Future<List<BookModel>>fetchBestSellerBooks();
  Future<List<BookModel>>fetchFeaturedBooks();

}