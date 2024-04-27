import 'package:flutter/material.dart';

//this map for match to name and index value in api
const Map<String, int> carPosition = {
  'x55pro': 19,
  'tiggo7': 102,
  'Arrizo5s': 99,
  'Pars': 56,
  '207': 39,
  'atlas': 6,
  'shahin': 176,
};
List<String> carName = carPosition.keys.toList();

const List<String> coinName = [
  'BTC',
  'USDT',
  'ETH',
  'SHIB',
  'BCH',
  'LTC',
  'ETC',
  'TON',
];
// Prices get from API
List<String> carPrice = [];
List<String> coinPrice = [];

// the coinReqeuestURL requires value in the for loop
// the coinReqeuestURL in coinGetPrice function
const String carToken = 'type your api';
const String carRequestURL =
    'https://sourcearena.ir/api/?token=$carToken&car=all';

const Color colorBG = Color.fromRGBO(216, 215, 255, 1.0);
const Color colorCircle = Color.fromRGBO(253, 218, 116, 1.0);
const Color colorTitle = Color.fromRGBO(97, 88, 255, 1.0);
const Color colorText = Color.fromRGBO(97, 88, 255, 0.7);
const Color colorBox = Colors.white70;
const TextStyle textstyleLod = TextStyle(
  shadows: [Shadow(color: Colors.white, offset: Offset(-5, 6))],
  fontWeight: FontWeight.w900,
  letterSpacing: 2,
  fontSize: 64,
  color: colorTitle,
  fontFamily: 'yekan',
);
const TextStyle textStyleText =
    TextStyle(fontFamily: 'yekan', color: colorText, fontSize: 16);
const TextStyle textStyleTitle =
    TextStyle(fontFamily: 'yekan', color: colorTitle, fontSize: 24);
