import 'package:edu_homework/presenter/main_screen/widgets/route_button.dart';
import 'package:edu_homework/utils/page_names.dart';
import 'package:edu_homework/utils/routes.dart';
import 'package:edu_homework/utils/widgets/error_page.dart';
import 'package:flutter/material.dart';

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageList = Constants.pageList;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: pageList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: RouteButton(
            routeName: pageList[index],
            onPush: () => _navigateToPage(context, pageList[index]),
          ),
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context, String routeName) {
    final pageRoutes = Routes.pageRoutes;

    Navigator.push<MaterialPageRoute>(
      context,
      MaterialPageRoute(
        builder: (_) => pageRoutes[routeName] ?? StubPage(title: routeName),
      ),
    );
  }
}
