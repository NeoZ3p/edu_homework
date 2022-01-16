import 'package:edu_homework/presenter/async_query/async_query_page.dart';
import 'package:edu_homework/presenter/codelab/codelab_page.dart';
import 'package:edu_homework/presenter/colored_list/colored_list_page.dart';
import 'package:edu_homework/presenter/colored_squares/colored_squares_page.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:flutter/material.dart';

class Routes {
  static const Map<String, Widget> pageRoutes = {
    Constants.coloredSquaresPage: ColoredSquaresPage(),
    Constants.coloredListPage: ColoredListPage(),
    Constants.codelabPage: CodelabPage(),
    Constants.asyncQueryPage: AsyncQueryPage(),
  };
}
