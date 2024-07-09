import '../../../data/models/BookModel.dart';

abstract class NewestBooksState {
  const NewestBooksState();
  List<Object> get props =>[];
}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksFailure extends NewestBooksState {
  late final String errorMessage;
  NewestBooksFailure(this.errorMessage);
}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;
  const NewestBooksSuccess(this.books);

}
