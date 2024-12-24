import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/di/service_locator.dart';
import 'package:news_app/features/news/presentation/bloc/news_app_bloc.dart';
import 'package:news_app/features/news/presentation/screens/home_screen.dart';

class AppRouter {
  GoRouter generateRoute() {
    return GoRouter(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return BlocProvider.value(
            value: serviceLocator<MainNewsBloc>()
              ..add(FetchNewsEvent()),
            child: const MainNewsScreen(),
          );
        },
      )
    ]);
  }
}