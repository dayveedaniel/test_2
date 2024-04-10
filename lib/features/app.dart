import 'package:flutter/material.dart';
import 'package:test_task/assets/theme.dart';
import 'package:test_task/features/ui/pages/choose_therapist_page/choose_therapist_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Therapist App',
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      home: const ChooseTherapistView(),
    );
  }
}
