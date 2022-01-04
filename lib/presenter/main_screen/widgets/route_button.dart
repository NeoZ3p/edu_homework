import 'package:edu_homework/utils/routes.dart';
import 'package:edu_homework/utils/widgets/error_page.dart';
import 'package:flutter/material.dart';

import 'custom_elevated_btn.dart';

class RouteButton extends StatelessWidget {
  const RouteButton({
    Key? key,
    required this.routeName,
  }) : super(key: key);

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return CustomElevatedBtn(
      onPush: () => _navigateToPage,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(routeName),
          const Icon(Icons.arrow_forward),
        ],
      ),
    );
  }

  void _navigateToPage(context) {
    var pageRoutes = Routes.pageRoutes;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          if (pageRoutes.containsKey(routeName)) {
            return pageRoutes[routeName]!;
          }
          return StubPage(title: routeName);
        },
      ),
    );
  }
}
