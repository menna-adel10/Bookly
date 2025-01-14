import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import '../../domain/entities/HomeRepo.dart';
import '../../domain/entities/book_entity.dart';

class HomeRepoImp implements HomeRepo {
  final  HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImp(this.homeLocalDataSource, this.homeRemoteDataSource);

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks({int pageNumber= 0}) async {
    try {
      var bookList =  homeLocalDataSource.fetchFeaturedBooks(
        pageNumber: pageNumber,
      );
      if (bookList.isNotEmpty) {
        return right(bookList);
      }
      var books = await homeRemoteDataSource.fetchFeaturedBooks(pageNumber:pageNumber);

      return right(books);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity>books;
      books = await homeLocalDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBooks();

      return right(books);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
/* final ApiServices apiServices;

  HomeRepoImp(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks({required String category})async {
    try {
      var data = await apiServices.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:programming');
      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}
*/
