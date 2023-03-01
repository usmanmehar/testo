import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';

import 'ad_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    AdProvider adProvider = Provider.of<AdProvider>(context, listen: false);
    adProvider.initializeHomeScreenBanner();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testo'),
      ),
      body: Center(
        child: Text('HI'),
      ),
      bottomNavigationBar: Consumer<AdProvider>(
        builder: (context, adProvider, child) {
          if (adProvider.isHomeScreenBannerLoaded) {
            return Container(
              height: adProvider.homeScreenBanner.size.height.toDouble(),
              child: AdWidget(
                ad: adProvider.homeScreenBanner,
              ),
            );
          } else {
            return Container(
              height: 0,
            );
          }
        },
      ),
    );
  }
}
