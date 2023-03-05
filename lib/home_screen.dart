import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import 'package:testo/ad_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    AdProvider adProvider = Provider.of<AdProvider>(context, listen: false);
    adProvider.loadAd(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Testo'),
        ),
        body: Center(
          child: Text('HI'),
        ),
        bottomNavigationBar: Consumer<AdProvider>(
          builder: (context, adProvider, child) {
            if (adProvider.isLoaded && adProvider.anchoredAdaptiveAd != null) {
              return Container(
                color: Colors.green,
                width: adProvider.anchoredAdaptiveAd!.size.width.toDouble(),
                height: adProvider.anchoredAdaptiveAd!.size.height.toDouble(),
                child: AdWidget(
                  ad: adProvider.anchoredAdaptiveAd!,
                ),
              );
            } else {
              return Container(
                height: 0,
              );
            }
          },
        ),
      ),
    );
  }
}
