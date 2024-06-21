import 'package:flutter/material.dart';
import 'package:pro/home/controller/homeController.dart';
import 'package:pro/home/screen/textCommon.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    HomeController homeController =
        Provider.of<HomeController>(context, listen: false);

    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const SecondScreen(
          //             appBartitle: "SArFAS",
          //           )),
          // );

          Navigator.pushNamed(context, '/second', arguments: "SDARFAS");
        }),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("data"),
            TextCommon(),
          ],
        ));
  }
}
