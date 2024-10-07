import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const Center(
        child: TextField(
            decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: 'Search',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              gapPadding: 10.0,
              borderSide: BorderSide.none),
        )),
      ),
    );
  }
}
