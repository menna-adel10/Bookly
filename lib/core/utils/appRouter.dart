import 'package:bookly/Features/home/persentation/views/home_view.dart';
import 'package:bookly/Features/search/views/search_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/views/SplachView.dart';

abstract class AppRouter{
  static const kHomeView = '/homeView';
  static const kBookDetailsView ='/bookDetailsView';
  static const kSeachView = "/SearchView";
  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder:(context,state) => const SplashView(),
      ),
      GoRoute(
        path: kSeachView,
        builder:(context,state) => const SearchView(),
      ),

      GoRoute(
        path: kHomeView,
        builder:(context,state) => const HomeView(),
      ),

      /*GoRoute(
        path: kBookDetailsView,
        builder:(context,state) => BlocProvider(
          create: (context)=>SimilarBookCubit(getIt.get<HomeRepoImp>()),
            child: BookDetailsView(
              bookModel: state.extra as BookModel,
            )),
      ),*/

    ],
  );

}