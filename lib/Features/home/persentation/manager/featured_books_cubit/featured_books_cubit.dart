import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/use_cases/fetch_featured_books_use_case.dart';
import 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super (FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    if(pageNumber ==0) {
      emit(FeaturedBooksLoading());
    }else{
      FeaturedBooksPaginationLoading();
    }
    var result = await fetchFeaturedBooksUseCase.call(pageNumber);
    result.fold((failure){
      if(pageNumber ==0) {
        emit(FeaturedBooksFailure(failure.errorMessage));
      }else{
        emit(FeaturedBooksPaginationFailure(failure.errorMessage));
        
      }
    },
    (books){
    emit(FeaturedBooksSuccess(books));
    });
  }

}
