class Oyunlar{
  final String _oyunAd;
  final String _oyunTur;
  final String _Oyun_Genel_Ozellikleri;
  final String _oyunLogo;
  final String _oyunBanner;

  get oyunAd => this._oyunAd;
  get oyunTur => this._oyunTur;
  get Oyun_Genel_Ozellikleri => this._Oyun_Genel_Ozellikleri;
  get oyunLogo => this._oyunLogo;
  get oyunBanner => this._oyunBanner;

  Oyunlar(this._oyunAd,this._oyunTur,this._Oyun_Genel_Ozellikleri,this._oyunLogo,this._oyunBanner);

  @override
  String toString() {
    return 'Ad: $_oyunAd , Tur: $_oyunTur , Özellikler: $_Oyun_Genel_Ozellikleri' ;
  }


}