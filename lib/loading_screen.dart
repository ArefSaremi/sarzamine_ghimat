import 'package:flutter/material.dart';

import 'consts.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorBG,
        body: Stack(children: [
          const Align(
            alignment: Alignment(0.4, -0.65),
            child: Circle(),
          ),
          const Align(
            alignment: Alignment(-0.6, 0.6),
            child: Circle(),
          ),
          const Align(
            alignment: Alignment(0.5, 0),
            child: Circle(),
          ),
          Align(
              alignment: const Alignment(-2, -0.3),
              child: Image.asset('assets/images/bitcoin.png')),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'سرزمین \n قیمت',
                  style: textstyleLod,
                  textAlign: TextAlign.right,
                ),
                Text(
                  'نمایش قیمت خودرو و ارز دیجیتال',
                  style: textStyleText,
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment(0, .6),
            child: CircularProgressIndicator(
                color: colorTitle, strokeAlign: 5, strokeWidth: 6),
          ),
        ]));
  }
}

class Circle extends StatelessWidget {
  const Circle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: colorCircle,
    );
  }
}
