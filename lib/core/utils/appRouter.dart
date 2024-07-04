import 'package:bookly/Features/home/persentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/splash/presentation/views/SplachView.dart';

abstract class AppRouter{
  static final router = GoRouter(
    routes:[
      GoRoute(
        path: '/',
        builder:(context,state) => const SplashView(),
      ),

      GoRoute(
        path: '/homeView',
        builder:(context,state) => const HomeView(),
      ),

    ],
  );

}