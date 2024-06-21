import 'package:flutter/material.dart';
import 'package:pro/home/controller/homeController.dart';
import 'package:pro/home/controller/secondController.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatefulWidget {

  const SecondScreen({super.key,});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      secondScreenController.onDataFetching(context);
    });

    super.initState();
  }

  late SecondScreenController secondScreenController;

  @override
  Widget build(BuildContext context) {
    secondScreenController = Provider.of<SecondScreenController>(
      context,
    );
    HomeController homeController = Provider.of<HomeController>(context, listen: false);




    return Scaffold(
      appBar: AppBar(
        title:  Text(secondScreenController.args.toString()),
      ),
      body: secondScreenController.isLoading
          ? const Center(
              child:
                  CircularProgressIndicator(color: Colors.red, strokeWidth: 50))
          : ListView(
              children: secondScreenController.a.map((e) => Text(e,)).toList(),
            ),
    );
  }
}
