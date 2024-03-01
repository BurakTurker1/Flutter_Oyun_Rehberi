import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/Oyun_Listesi.dart';
import 'package:flutter_oyun_rehberi/Oyun_detay.dart';
import 'package:flutter_oyun_rehberi/model/oyunlar.dart';

class RouteGenerator{
  static Route<dynamic>? routeGenerator(RouteSettings settings){
  switch(settings.name){
    
    case '/':
    return MaterialPageRoute(builder: (BuildContext context)=>Oyun_Listesi());

    case '/OyunDetay':
    final Oyunlar  secilen =settings.arguments as Oyunlar;
    return MaterialPageRoute(builder: (BuildContext context)=>Oyun_detay(secilenOyun:secilen));
  }
    }
  }