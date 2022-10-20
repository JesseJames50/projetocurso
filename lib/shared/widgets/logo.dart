import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double logoHeight;
  final double innerHeight;
  final String signal;
  final double fontSize;

  const LogoWidget({
    Key? key,
    required this.logoHeight,
    required this.innerHeight,
    required this.signal,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: logoHeight,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 44, 153, 255),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: innerHeight,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 21, 212, 15),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Text(signal,
                style: TextStyle(
                    color: Color.fromARGB(255, 24, 23, 22),
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
