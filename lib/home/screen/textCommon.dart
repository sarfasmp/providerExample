import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/home/controller/homeController.dart';
import 'package:provider/provider.dart';

class TextCommon extends StatelessWidget {
  const TextCommon({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (_, a, child) {
        return Center(
          child: Text(
            a.counter.toString(),
            style: const TextStyle(fontSize: 50, color: Colors.red),
          ),
        );
      },
    );
  }
}
