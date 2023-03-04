import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui/screens/article_screen.dart';
import 'package:news_app_ui/screens/discover_screen.dart';
import 'package:news_app_ui/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390,850),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,_){
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(

            useMaterial3: true,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,

            ),
            iconTheme: IconThemeData(
              size: 24.sp,
              color: Colors.white
            ),
          ),
          initialRoute: '/',
          routes: {
            HomeScreen.routeName : (context) => const HomeScreen(),
            DiscoverScreen.routeName : (context) => const DiscoverScreen(),
            ArticleScreen.routeName : (context) => const ArticleScreen()
          },
        );
      },

    );
  }
}

