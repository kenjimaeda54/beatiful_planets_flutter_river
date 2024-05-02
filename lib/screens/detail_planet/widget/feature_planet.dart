import 'package:beatiful_planets_flutter/themes/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:rive/rive.dart';

class FeatureDetailPlanet extends StatelessWidget {
  final String feature;
  final String artboard;
  const FeatureDetailPlanet(
      {super.key, required this.artboard, required this.feature});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: RiveAnimation.asset(
              "assets/first_integration.riv",
              artboard: artboard,
              fit: BoxFit.contain,
              controllers: [OneShotAnimation("loop")],
              stateMachines: const ["State"],
            ),
          ),
          Text(
            feature,
            style: const TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: white),
          )
        ],
      ),
    );
  }
}
