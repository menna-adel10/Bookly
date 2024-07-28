import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/use_cases/no_param_use_case.dart';
import '../entities/HomeRepo.dart';
import '../entities/book_entity.dart';


class FetchNewestBooksUseCase extends UseCase<List<BookEntity>>{

  late HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);
  @override
  Future<Either<Failure, List<BookEntity>>> call() async{
   return await homeRepo.fetchNewestBooks();
  }

}
