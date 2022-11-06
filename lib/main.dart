import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/home_commander.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/home',
        getPages: [
          GetPage(
            name: '/home',
            page: () => const HomeCommander(),
            transition: Transition.zoom,
          ),
        ]);
  }
}