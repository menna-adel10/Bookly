import 'package:bookly/Features/home/persentation/views/home_view.dart';
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
        builder:(context,state) => const BookDetailsView(),
      ),

    ],
  );

}