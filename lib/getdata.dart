// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:sarzamine_gheimat/loading_screen.dart';
import 'package:sarzamine_gheimat/main_screen.dart';
import 'package:http/http.dart' as http;
import 'consts.dart';

class GetData extends StatefulWidget {
  const GetData({super.key});

  @override
  State<GetData> createState() => _GetDataState();
}

class _GetDataState extends State<GetData> {
  @override
  void initState() {
    super.initState();
    coinGetPrice();
    carGetPrice();
  }

  void goToMainScreen() async {
    setState(() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return MainScreen(
          carPrice: carPrice,
          coinPrice: coinPrice,
        );
      }));
    });
  }

  Future carGetPrice() async {
    http.Response response = await http.get(Uri.parse(carRequestURL));
    if (response.statusCode == 200) {
      for (int adad in carPosition.values) {
        var decodedData = jsonDecode(response.body);
        String carLastPrice = decodedData[adad]['price'];
        setState(() {
          carPrice.add(carLastPrice);
        });

        print(carLastPrice);
      }
      goToMainScreen();
    } else {
      print(response.statusCode);
      throw 'Problem with the get request';
    }
  }

  Future coinGetPrice() async {
    for (String coinName in coinName) {
      String coinRequestURL =
          'https://api.nobitex.ir/v2/orderbook/${coinName}IRT';
      http.Response response = await http.get(Uri.parse(coinRequestURL));
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        String coinLastPrice = decodedData['lastTradePrice'];
        setState(() {
          coinPrice.add(coinLastPrice);
        });

        print(coinLastPrice);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const LoadingScreen();
  }
}
