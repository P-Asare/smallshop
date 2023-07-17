import 'package:flutter/material.dart';
import 'package:smallshop/utils/constants.dart';

import '../mywigets/ptab.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final List<PTab> myTabs = [
    const PTab(
        tabImage: pTabImage1, tabTitle: pTabText1, tabDescrip: pTabDesc1),
    const PTab(
        tabImage: pTabImage2, tabTitle: pTabText1, tabDescrip: pTabDesc1),
    const PTab(
        tabImage: pTabImage3, tabTitle: pTabText1, tabDescrip: pTabDesc1),
  ];

  int tabNum = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
              top: 30,
              right: 15,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tabNum = 1;
                  });
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              )),
          Positioned(
            top: 80,
            child: myTabs[tabNum - 1],
          ),
          Positioned(
            bottom: 180,
            child: Text(
              '$tabNum/3',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (tabNum < myTabs.length) {
                      tabNum++;
                    } else {
                      tabNum = 1;
                    }
                  });
                },
                backgroundColor: Colors.black,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
