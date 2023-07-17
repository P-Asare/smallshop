import 'package:flutter/material.dart';

class PTab extends StatelessWidget {
  final String tabImage;
  final String tabTitle;
  final String tabDescrip;

  const PTab({
    super.key,
    required this.tabImage,
    required this.tabTitle,
    required this.tabDescrip,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width * 0.9,
      height: screenSize.height * 0.6,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Color.fromARGB(255, 189, 186, 186),
            offset: Offset(0, 5),
            spreadRadius: 5,
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      //padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(
              tabImage,
            ),
            width: screenSize.width * 0.8,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Text(
                tabTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Expanded(
                child: Text(
                  tabDescrip,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
