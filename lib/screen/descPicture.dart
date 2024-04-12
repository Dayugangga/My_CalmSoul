// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'dart:ui';

import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:my_calmsoul/component/color.dart';

class PictureDesc extends StatelessWidget {
  const PictureDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Image(
              image: AssetImage('assets/images/badha.jpg'),
              width: 400,
              height: 300,
            ),
            buttonArrow(context),
            scroll()
          ],
        ),
      ),
    );
  }
}

buttonArrow(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ),
    ),
  );
}

scroll() {
  return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 1.0,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    height: 4,
                  ),
                ),
                Text(
                  "Description",
                  // ignore: deprecated_member_use
                  style: Theme.of(context).textTheme.headline1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your',
                  style: Theme.of(context)
                      .textTheme
                      // ignore: deprecated_member_use
                      .bodyText2!
                      .copyWith(color: SecondaryText),
                ),
              ],
            ),
          ),
        );
      });
}
