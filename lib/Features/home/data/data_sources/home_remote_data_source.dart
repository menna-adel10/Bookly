import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/api_services.dart';
import '../../../../core/utils/functions/save_box_data.dart';
import '../../domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0});

  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiServices apiServices;

  HomeRemoteDataSourceImpl(this.apiServices);

  @override
  Future<List<BookEntity>> fetchFeaturedBooks({int pageNumber = 0}) async {
    var data = await apiServices.get(endPoint: 'volumes?Sorting=relevance&startIndex=${pageNumber*10}&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveData(books,kFeaturedBox);
    return books;
  }


  @override
  Future<List<BookEntity>> fetchNewestBooks()async {
    var data = await apiServices.get(endPoint: 'volumes?Sorting=relevance&q=programming');
    List<BookEntity> books = getBooksList(data);
    saveData(books,kNewestBox);
    return books;
  }





  List<BookEntity> getBooksList (Map<String,dynamic>data){
    List<BookEntity> books = [];
    for(var bookMap in data['items']){
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

}
