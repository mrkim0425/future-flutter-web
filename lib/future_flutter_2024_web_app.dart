import 'package:flutter/material.dart';
import 'package:future_flutter_web_2024/coc/coc_screen.dart';
import 'package:future_flutter_web_2024/home/home_screen.dart';
import 'package:future_flutter_web_2024/sessions/sessions_screen.dart';
import 'package:future_flutter_web_2024/style/color.dart';
import 'package:future_flutter_web_2024/style/typography.dart';
import 'package:go_router/go_router.dart';

class FutureFlutter2024WebApp extends StatelessWidget {
  const FutureFlutter2024WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Future Flutter 2024',
      routerConfig: _router,
      theme: ThemeData(
        fontFamily: 'SUIT',
        primaryColor: primaryColor,
        secondaryHeaderColor: secondaryColor,
        textTheme: const TextTheme(
          displayLarge: display1,
          headlineLarge: heading1,
          headlineMedium: heading2,
          headlineSmall: heading3,
          titleLarge: heading4,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor.shade100,
          elevation: 10
        ),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

GoRouter _router = GoRouter(routes: [
  GoRoute(
    path: '/',
    name: 'home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/coc',
    name: 'coc',
    builder: (context, state) => const CocScreen(),
  ),
  GoRoute(
    path: '/sessions',
    name: 'sessions',
    builder: (context, state) => const SessionsScreen(),
  )
]);
