
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';


class Bloc {
  static final Bloc _bloc = Bloc._internal();

  factory Bloc() {
    return _bloc;
  }

  Bloc._internal();

  BehaviorSubject<int> index = BehaviorSubject();
  Sink<int> get sinkindex => index.sink;
  Stream<int> get streamindex => index.stream;





  void caricaIndex(int indexcaricato){
   
index.sink.add(indexcaricato);

  }

  cambioicona(checkint) {
    if (checkint == 0) {
      return Icon(Icons.abc);
    } else if (checkint == 1) {
      return Icon(Icons.ac_unit_outlined);
    } else if (checkint == 2) {
      return Icon(Icons.access_alarm_sharp);
    } else if (checkint == 3) {
      return Icon(Icons.access_time_outlined);
    }
  }
  
  void dispose() {
    index.close();
  }
}
