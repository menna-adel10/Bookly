import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/HomeRepo.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase{

  late HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);
  Future<Either<Failure,List<BookEntity>>>fetchFeaturedBooks(){
    //check permission
    return homeRepo.fetchFeaturedBooks();

  }

}