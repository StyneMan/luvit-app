import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luvit_flutter/helper/constants/constants.dart';
import 'package:luvit_flutter/widgets/dashboard/dashboard.dart';

import 'helper/state/state_manager.dart';

void main() async {
  await Get.putAsync<StateController>(() async {
    return StateController();
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Constants.darkTheme,
      home: const Dashboard(),
    );
  }
}
