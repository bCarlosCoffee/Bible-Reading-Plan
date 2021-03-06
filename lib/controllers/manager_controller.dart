import 'package:flutter/material.dart';

// External Packages
import 'package:get/get.dart';

// Screens
import '../screens/about/about_screen.dart';
import '../screens/readingplan/reading_plan_screen.dart';
import '../screens/whyreadthebible/why_read_the_bible.dart';
import '../screens/howtoreadthebible/how_to_read_the_bible.dart';
import '../screens/booksandletters/books_and_letters_screen.dart';


class ManagerController extends GetxController {

  static ManagerController get to => Get.find();

  String title = "Plano de Leitura";
  String currentScreen = "reading_plan";
  Widget body = ReadingPlanScreen();

  final Map<String, Widget> _screens = {
    "about": AboutScreen(),
    "reading_plan": ReadingPlanScreen(),
    "books_and_letters": BooksAndLettersScreen(),
    "why_read_the_bible": WhyReadTheBibleScreen(),
    "how_to_read_the_bible": HowToReadTheBibleScreen(),
  };


  updateScreen(Map<String, dynamic> data) {

    title = data["title"];
    currentScreen = data["current_screen"];
    body = _screens[currentScreen];

    update();
    Get.back();

  }

}