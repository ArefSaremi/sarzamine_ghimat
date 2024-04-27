import 'package:flutter/material.dart';

import 'package:sarzamine_gheimat/consts.dart';
import 'show_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(
      {super.key, required this.carPrice, required this.coinPrice});
  final List<String> carPrice;
  final List<String> coinPrice;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool change = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              change = !change;
            });
          },
          backgroundColor: colorCircle,
          child: const Icon(Icons.currency_exchange)),
      backgroundColor: colorBG,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: colorBG,
        centerTitle: true,
        title: const Text(
          'سرزمین قیمت',
          style: textStyleTitle,
        ),
      ),
      body: change
          ? ShowList(
              name: carName,
              price: widget.carPrice,
            )
          : ShowList(
              name: coinName,
              price: coinPrice,
            ),
    );
  }
}
