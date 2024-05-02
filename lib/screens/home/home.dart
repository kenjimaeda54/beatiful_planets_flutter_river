import 'package:beatiful_planets_flutter/screens/detail_planet/detail_planet.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Home extends StatelessWidget {
  late final StateMachineController _stateMachineController;
  Home({super.key});

  static Route<void> route() {
    return PageRouteBuilder(
        pageBuilder: (_, __, ___) => Home(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
        transitionDuration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    void handleInitRive(Artboard artboard) {
      _stateMachineController =
          StateMachineController.fromArtboard(artboard, "State Solar")!;
      artboard.play();
      artboard.addController(_stateMachineController);
      _stateMachineController.addEventListener((event) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.of(context)
              .push(DetailPlanet.route(planetId: event.properties[""]));
        });
      });
    }

    return Scaffold(
      body: RiveAnimation.asset(
        "assets/first_integration.riv",
        onInit: handleInitRive,
        artboard: 'System Solar',
        fit: BoxFit.cover,
      ),
    );
  }
}
