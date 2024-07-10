import 'package:bookly/Features/home/data/models/BookModel.dart';
import 'package:bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:bookly/Features/home/persentation/manager/similar_books_cubit/similar_book_cubit.dart';
import 'package:bookly/Features/home/persentation/views/home_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/persentation/views/book_details_view.dart';
import '../../Features/splash/presentation/views/SplachView.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailsView ='/bookDetailsView';
  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder:(context,state) => const SplashView(),
      ),

      GoRoute(
        path: kHomeView,
        builder:(context,state) => const HomeView(),
      ),

      GoRoute(
        path: kBookDetailsView,
        builder:(context,state) => BlocProvider(
          create: (context)=>SimilarBookCubit(getIt.get<HomeRepoImp>()),
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),

    ],
  );

}