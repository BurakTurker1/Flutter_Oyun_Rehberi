import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/model/oyunlar.dart';

class Oyun_item extends StatelessWidget {
  final Oyunlar listelenenOyun;
  const Oyun_item({required this.listelenenOyun,super.key});

  @override
  Widget build(BuildContext context) {
    var MytextStyle = Theme.of(context).textTheme;
    return Card(
      shadowColor: Colors.orange,
      elevation: 35,
      child: ListTile(
        leading: Image.asset("images/"+listelenenOyun.oyunLogo,
        width: 64, 
        height: 64,
        ),
      
        title: Text(listelenenOyun.oyunAd,),
        subtitle: Text(listelenenOyun.oyunTur),
        trailing: Icon(Icons.videogame_asset_outlined,size: 30,),
      ),
    );
  }
}