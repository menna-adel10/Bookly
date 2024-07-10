import '../../../data/models/BookModel.dart';

abstract class SimilarBookState {
  const SimilarBookState();
  List<Object> get props =>[];
}

class SimilarBooksInitial extends SimilarBookState {}

class SimilarBooksLoading extends SimilarBookState {}

class SimilarBooksFailure extends SimilarBookState {
  late final String errorMessage;
  SimilarBooksFailure(this.errorMessage);
}

class SimilarBooksSuccess extends SimilarBookState {
  final List<BookModel> books;
  const SimilarBooksSuccess(this.books);

}
