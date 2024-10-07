import 'package:flutter/material.dart';
import 'package:online_store/features/home/presentation/views/homepage.dart';
import 'package:online_store/features/home/presentation/views/widgets/home.dart';

class Bic extends StatelessWidget {
  const Bic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
