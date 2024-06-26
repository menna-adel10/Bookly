import '../../../data/models/BookModel.dart';

abstract class FeaturedBooksState{}

class FeaturedBooksInitial extends FeaturedBooksState{}

class FeaturedBooksLoading extends FeaturedBooksState{}

class FeaturedBooksFailure extends FeaturedBooksState{
  late final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksState{
  final List<BookModel> books;
  FeaturedBooksSuccess(this.books);
}


