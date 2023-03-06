import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:testo/ad_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AdController controller = Get.put(AdController());

  @override
  Widget build(BuildContext context) {
    print('build');
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Testo'),
          ),
          body: Center(
            child: Text('HI'),
          ),
          bottomNavigationBar: GetBuilder<AdController>(
              init: AdController(),
              builder: (value) => Container(
                    color: Colors.green,
                    width: controller.anchoredAdaptiveAd!.size.width.toDouble(),
                    height:
                        controller.anchoredAdaptiveAd!.size.height.toDouble(),
                    child: AdWidget(ad: controller.anchoredAdaptiveAd!),
                  ))),
    );
  }
}
