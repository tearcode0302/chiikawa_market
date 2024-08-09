import 'package:chiikawamarketapp/src/init/page/init_start_page.dart';
import 'package:chiikawamarketapp/src/splash/page/splash.dart';
import 'package:flutter/material.dart';
import 'package:chiikawamarketapp/main.dart';

class ChiikawaMarket extends StatefulWidget {
  const ChiikawaMarket({super.key});

  @override
  State<ChiikawaMarket> createState() => _ChiikawaMarketState();
}

class _ChiikawaMarketState extends State<ChiikawaMarket> {
  late bool isInitStarted;

  @override
  void initState() {
    super.initState();
    isInitStarted = prefs.getBool('isInitStarted') ?? true;
  }
  @override
  Widget build(BuildContext context) {
    return isInitStarted ? const InitStartPage() : const SplashPage();
  }
}
