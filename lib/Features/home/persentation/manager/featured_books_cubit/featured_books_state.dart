import '../../../data/models/BookModel.dart';

abstract class FeaturedBooks{}

class FeaturedBooksInitial extends FeaturedBooks{}

class FeaturedBooksLoading extends FeaturedBooks{
}

class FeaturedBooksFailure extends FeaturedBooks{
  late final String errorMessage;
  FeaturedBooksFailure(this.errorMessage);
}

class FeaturedBooksSuccess extends FeaturedBooks{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);

}

