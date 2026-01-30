import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_flutter_v1/bloc/news_cubit.dart';
import 'package:news_app_flutter_v1/ui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Teal color palette from image
  static const Color tealDark = Color(0xFF005461);
  static const Color tealMedium = Color(0xFF0C7779);
  static const Color tealLight = Color(0xFF249E94);
  static const Color tealLightest = Color(0xFF3BC1A8);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewsCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter NewsApp V3',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: tealDark,
            primary: tealDark,
            secondary: tealLight,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
          appBarTheme: AppBarTheme(
            centerTitle: true,
            elevation: 0,
            backgroundColor: tealDark,
            foregroundColor: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: tealMedium,
              foregroundColor: Colors.white,
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: tealLight,
            foregroundColor: Colors.white,
          ),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
