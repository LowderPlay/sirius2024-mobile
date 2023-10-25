import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Promo extends StatelessWidget {
  const Promo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xfffff3dd),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        Positioned.fill(
            child: SvgPicture.asset(
          "assets/promo-background.svg",
          fit: BoxFit.cover,
        )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Узнай какое занятие подойдет вашему ребёнку",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset("assets/girl.svg"),
            )
          ],
        ),
      ],
    );
  }
}
