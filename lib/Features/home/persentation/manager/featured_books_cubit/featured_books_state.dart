import 'package:bookly/Features/home/domain/entities/book_entity.dart';


abstract class FeaturedBooksState {}

class FeaturedBooksInitial extends FeaturedBooksState {}

class FeaturedBooksLoading extends FeaturedBooksState {}

class FeaturedBooksPaginationLoading extends FeaturedBooksState {}

class FeaturedBooksPaginationFailure extends FeaturedBooksState {
  late final String errorMessage;
  FeaturedBooksPaginationFailure(this.errorMessage);
}
class FeaturedBooksFailure extends FeaturedBooksState {
  late final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksState {
  final List<BookEntity> books;
  FeaturedBooksSuccess(this.books);
}
