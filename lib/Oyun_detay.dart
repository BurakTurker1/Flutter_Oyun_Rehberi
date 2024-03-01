import 'package:flutter/material.dart';
import 'package:flutter_oyun_rehberi/model/oyunlar.dart';
import 'package:palette_generator/palette_generator.dart';

class Oyun_detay extends StatefulWidget {
  final Oyunlar secilenOyun;
  const Oyun_detay({required this.secilenOyun, super.key});

  @override
  State<Oyun_detay> createState() => _Oyun_detayState();
}

class _Oyun_detayState extends State<Oyun_detay> {

  Color appbarRengi =  Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // sayfa ekran a gelmeden önce burası 1 kere çalışıyo sonra istersen setsate diyerek sayfayı istedin kadar çağıra biliyosun
    //kullanım yerleri degişkenlerin ilk degerlerini atarken kullanılıyo
    super.initState();
    //AppbarRenginiBul(); //future oldugu için ayrı bir method da çağırıyosun ve async yapıyoruz
    WidgetsBinding.instance!.addPostFrameCallback((_)=>AppbarRenginiBul());//sayfanın build i bitmeden  verdigimiz fonksiyonu(AppbarRenginiBul) çalıştırma demek yani önce sayfayı build ediyo sonra appbar rengini buluyor (büyük projelerde performans konusunda etkili)
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            floating: false,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/' + widget.secilenOyun.oyunBanner,
                fit: BoxFit.cover,
              ),
              title: Text(widget.secilenOyun.oyunAd),
              centerTitle: true,
            ),
          ),
          //conteiner ı sliver türüne çeviriyor
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.all(5),
              child:  Column(
                children: [
                  Text(
                   widget.secilenOyun.Oyun_Genel_Ozellikleri,
                   style: TextStyle(fontSize: 18),),
                   Text(
                   widget.secilenOyun.oyun_min_Sistem_Gereksimi,
                   style: TextStyle(fontSize: 18),),
                   Text(
                   widget.secilenOyun.oyun_onerilen_Sistem_Gereksimi,
                   style: TextStyle(fontSize: 18),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  void AppbarRenginiBul() async{
        _generator = await PaletteGenerator.fromImageProvider(AssetImage('images/'+widget.secilenOyun.oyunBanner));  //secilen oyunu görmüyor çünkü başka kısımda tanımlı orayı göremiyo görmesi için de "widget." diyerek ulaşıyoruz.
        appbarRengi = _generator.dominantColor!.color;
        setState(() {
          
        });
  }
}
