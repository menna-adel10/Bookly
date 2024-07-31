import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/HomeRepo.dart';
import '../entities/book_entity.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int>{

  late HomeRepo homeRepo;
  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([int param = 0]) async{
    return await homeRepo.fetchFeaturedBooks(
      pageNumber: param,
    );
  }
}





class NoParam{}