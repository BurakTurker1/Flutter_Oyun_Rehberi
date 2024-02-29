import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/model/oyunlar.dart';
import 'package:flutter_oyun_rehberi/data/strings.dart';
import 'package:flutter_oyun_rehberi/oyun_item.dart';

class Oyun_Listesi extends StatelessWidget {
   late List<Oyunlar> tumOyunlar; //late tumOyunların suan initializer  edilmedigini ama edilecegini söylüyo
   Oyun_Listesi(){
    tumOyunlar = VeriKaynaginiHazirla();
    //print(tumOyunlar);
   }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Oyun Listesi'),centerTitle: true,),
      body: Center(
        child: ListView.builder(itemBuilder: (BuildContext context,int index){
          return Oyun_item(listelenenOyun: tumOyunlar[index],);
        },itemCount: Strings.Oyun_Adlari.length,),
      ),  
    );
  }
  
  List<Oyunlar> VeriKaynaginiHazirla() {
    List<Oyunlar> gecici =[];
    for (var i = 0; i <Strings.Oyun_Adlari.length ; i++) {
      Oyunlar EklenecekOyun =Oyunlar(Strings.Oyun_Adlari[i], Strings.Oyun_Tur[i],Strings.Oyun_Genel_Ozellikleri[i] ,Strings.oyun_foto[i] + "_logo.png", Strings.oyun_foto[i]+"_banner.png");
      gecici.add(EklenecekOyun);
      
    }
    return gecici;
  }
}