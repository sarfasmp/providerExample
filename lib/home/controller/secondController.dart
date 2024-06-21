import 'package:flutter/cupertino.dart';

class SecondScreenController extends ChangeNotifier {

  List<String> a = [];

  bool isLoading=false;
  String? args;
  void onDataFetching(BuildContext context) async{
    args = ModalRoute.of(context)!.settings.arguments as String;

    isLoading=true;
    notifyListeners();

   await Future.delayed(const Duration(seconds: 10), () {
      a = List.generate(200, (index) => index.toString()).toList();

      print(a.length);



    });

   ///


    isLoading=false;
    notifyListeners();

  }
}
