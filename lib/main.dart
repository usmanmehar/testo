import 'dart:developer' as dev;
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:testo/home_screen.dart';

import 'ad_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  MobileAds.instance.initialize();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AdProvider>(
          create: (context) => AdProvider(),
        ),
      ],
      child: Consumer<AdProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}

class AdProvider with ChangeNotifier {
  BannerAd? anchoredAdaptiveAd;
  bool isLoaded = false;
  Future<void> loadAd(context) async {
    // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      print('Unable to get height of anchored banner.');
      return;
    }

    anchoredAdaptiveAd = BannerAd(
      // TODO: replace these test ad units with your own ad unit.
      adUnitId: Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716',
      size: size,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          print('$ad loaded: ${ad.responseInfo}');
          dev.log('before');

          // When the ad is loaded, get the ad size and use it to set
          // the height of the ad container.
          anchoredAdaptiveAd = ad as BannerAd;
          isLoaded = true;
          notifyListeners();
          dev.log('after');
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          print('Anchored adaptive banner failedToLoad: $error');
          ad.dispose();
        },
      ),
    );
    return anchoredAdaptiveAd!.load();
  }
}
