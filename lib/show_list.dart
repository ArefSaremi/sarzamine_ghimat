import 'package:flutter/material.dart';

import 'consts.dart';

class ShowList extends StatelessWidget {
  const ShowList({
    super.key,
    required this.name,
    required this.price,
  });
  final List<String> name;
  final List<String> price;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: name.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 140,
              width: double.infinity - 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: colorBox),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      height: 80,
                      width: 150,
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/${name[index]}.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name[index],
                          style: textStyleTitle,
                        ),
                        Text(
                          price[index],
                          style: textStyleText,
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        );
      },
    );
  }
}
