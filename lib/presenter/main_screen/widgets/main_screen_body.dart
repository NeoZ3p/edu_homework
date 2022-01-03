import 'package:edu_homework/presenter/main_screen/widgets/route_button.dart';
import 'package:flutter/material.dart';

class MainScreenBody extends StatelessWidget {
  MainScreenBody({Key? key}) : super(key: key);

  final pageNames = [
    '4 квадрата',
    'Цветной список',
    'Codelab',
    'Асинхронный запрос',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: pageNames.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: RouteButton(routeName: pageNames[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
