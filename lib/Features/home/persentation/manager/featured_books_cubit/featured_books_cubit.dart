import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/use_cases/use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/HomeRepo.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';
import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super (FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());

    var result = await fetchFeaturedBooksUseCase.call();
    result.fold((failure){
      emit(FeaturedBooksFailure(failure.errorMessage));
    },
    (books){
    emit(FeaturedBooksSuccess(books));
    });
  }

}
