import 'package:edu_homework/presenter/main_screen/widgets/route_button.dart';
import 'package:flutter/material.dart';

const pageNames = [
  '4 квадрата',
  'Цветной список',
  'Codelab',
  'Асинхронный запрос',
];

class MainScreenBody extends StatelessWidget {
  const MainScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: pageNames.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: RouteButton(routeName: pageNames[index]),
        ),
      ),
    );
  }
}
