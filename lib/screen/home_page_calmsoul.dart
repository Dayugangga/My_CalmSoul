import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group1Widget - GROUP
    return Stack(children: <Widget>[
          Positioned(
      top: 10,
      left: 320,
      child: Container(
        width: 59,
        height: 45,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo.png'),
              fit: BoxFit.fitWidth),
        ),
      )),
          const Positioned(
      top: 20,
      left: 30,
      child: Text(
        'Welcome Home!',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Itim',
            fontSize: 30,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
      )),
          const Positioned(
      top: 330,
      left: 55,
      child: Text(
        'The Main Key To Meditation',
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Itim',
            fontSize: 23,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1),
      )),
          Positioned(
      top: 370,
      left: 40,
      child: Container(
          width: 140,
          height: 142,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/happiness.png'),
                fit: BoxFit.fitWidth),
          ))),
          Positioned(
      top: 545,
      left: 40,
      child: Container(
          width: 140,
          height: 142,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/relax.png'),
                fit: BoxFit.fitWidth),
          ))),
          Positioned(
      top: 370,
      left: 230,
      child: Container(
          width: 138,
          height: 135,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/focus.png'),
                fit: BoxFit.fitWidth),
          ))),
          Positioned(
      top: 545,
      left: 230,
      child: Container(
          width: 138,
          height: 135,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/goodness.png'),
                fit: BoxFit.fitWidth),
          ))),
          const Positioned(
      top: 680,
      left: 55,
      child: Text(
        'Happiness',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Itim',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 0.8888888888888888),
      )),
          const Positioned(
      top: 505,
      left: 55,
      child: Text(
        'Happiness',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Itim',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 0.8888888888888888),
      )),
          const Positioned(
      top: 680,
      left: 270,
      child: Text(
        'Focus',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Itim',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 0.8888888888888888),
      )),
          const Positioned(
      top: 505,
      left: 270,
      child: Text(
        'Focus',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Itim',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 0.8888888888888888),
      )),
          Positioned(
      top: 171,
      left: 29,
      child: Container(
          width: 350,
          height: 145,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 191, 145, 1),
          ))),
          Positioned(
      top: 208,
      left: 140,
      child: Container(
          width: 125,
          height: 108,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/music.png'),
                fit: BoxFit.fitWidth),
          ))),
          const Positioned(
      top: 180,
      left: 61,
      child: Text(
        'Let the music guide your inner peace',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontFamily: 'Glass Antiqua',
            fontSize: 18,
            letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 0.8888888888888888),
      )),
          Positioned(
      top: 90,
      left: 30,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: const Color.fromRGBO(236, 186, 86, 1),
          border: Border.all(
            color: const Color.fromRGBO(236, 186, 86, 1),
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 145, vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(),
                child: const Stack(children: <Widget>[])),
            const SizedBox(width: 5),
            const Text(
              'Search',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(21, 21, 21, 1),
                  fontFamily: 'Inter',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
          ],
        ),
      )),
        ]);
  }
}
