import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/model/oyunlar.dart';

class Oyun_detay extends StatelessWidget {
  final Oyunlar secilenOyun;
  const Oyun_detay({required this.secilenOyun, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.deepOrangeAccent,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/' + secilenOyun.oyunBanner,
                fit: BoxFit.cover,
              ),
              title: Text(secilenOyun.oyunAd),
              centerTitle: true,
            ),
          ),
          //conteiner ı sliver türüne çeviriyor
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Text(
                  secilenOyun.Oyun_Genel_Ozellikleri,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
