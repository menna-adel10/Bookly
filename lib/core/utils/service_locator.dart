import 'package:bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../Features/home/data/repos/home_repo_implementation.dart';
import 'api_services.dart';

final getIt = GetIt.instance;

void setUp(){
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImp>(HomeRepoImp(
     HomeLocalDataSourceImpl(),
     HomeRemoteDataSourceImpl(getIt.get<ApiServices>(),),
  ));
}