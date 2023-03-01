import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdProvider with ChangeNotifier {
  bool isHomeScreenBannerLoaded = false;
  late BannerAd homeScreenBanner;

  void initializeHomeScreenBanner() async {
    homeScreenBanner = BannerAd(
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(onAdLoaded: (ad) {
        isHomeScreenBannerLoaded = true;
        log("Home Screen Banner Loaded!");
      }, onAdClosed: (ad) {
        ad.dispose();
        isHomeScreenBannerLoaded = false;
      }, onAdFailedToLoad: (ad, err) {
        log(err.toString());
        isHomeScreenBannerLoaded = false;
      }),
    );

    await homeScreenBanner.load();
    notifyListeners();
  }
}
