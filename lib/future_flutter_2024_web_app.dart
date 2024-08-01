import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/coc/coc_screen.dart';
import 'package:future_flutter_web_2024/home/home_screen.dart';
import 'package:go_router/go_router.dart';

class FutureFlutter2024WebApp extends StatelessWidget {
  const FutureFlutter2024WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Future Flutter 2024',
      routerConfig: _router,
      theme: ThemeData.dark(),
    );
  }
}

GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/coc',
    name: 'coc',
    builder: (context, state) => CocScreen(),
  )

]);
