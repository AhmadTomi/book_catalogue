import 'package:google_fonts/google_fonts.dart';

import '/views/book_list.dart';
import 'package:flutter/material.dart';
import '/controllers/book_controller.dart';
import '/widgets/constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Book App',
        theme: _buildTheme(Brightness.dark),


        home: const BookListPage(),
      ),
    );
  }
  ThemeData _buildTheme(brightness) {
    var baseTheme = ThemeData(brightness: brightness);

    return baseTheme.copyWith(
      primaryColor: backgroundColor,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: backgroundColor,
      ),
      scaffoldBackgroundColor: const Color(0xFF171826),
      textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
    );
  }
}