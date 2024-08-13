import 'package:flutter/material.dart';


class HomeProvider extends ChangeNotifier{
  int i = 0;
  void addition (){
    i++;
    notifyListeners();
  }
  void addition2 (){
    i+=2;
    notifyListeners();
  }
  void addition3 (){
    i+=3;
    notifyListeners();
  }
  void addition4 (){
    i+=4;
    notifyListeners();
  }
  void subtraction (){
    i--;
    notifyListeners();
  }
  void multiplication2 (){
    i*=2;
    notifyListeners();
  }
  void multiplication3 (){
    i*=3;
    notifyListeners();
  }
  void multiplication4 (){
    i*=4;
    notifyListeners();
  }
  void reset (){
    i= 0;
    notifyListeners();
  }

}