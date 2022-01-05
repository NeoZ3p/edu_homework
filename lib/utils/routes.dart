import 'package:edu_homework/presenter/colored_list/colored_list_page.dart';
import 'package:edu_homework/presenter/colored_squares/colored_squares_page.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class Routes {
  static const Map<String, Widget> pageRoutes = {
    PageNames.coloredSquares: ColoredSquaresPage(),
    PageNames.coloredList: ColoredListPage(),
  };
}
