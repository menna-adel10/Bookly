import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/persentation/views/widgets/similar_book_list_view.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{

  Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks({int pageNumber = 0});
  Future<Either<Failure,List<BookEntity>>>fetchNewestBooks();
  //Future<Either<Failure,List<BookEntity>>>fetchSimilarBooks();

}