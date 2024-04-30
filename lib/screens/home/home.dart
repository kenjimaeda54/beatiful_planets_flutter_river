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
        transitionDuration: Duration(seconds: 1));
  }

  void _handleInitRive(Artboard artboard) {
    _stateMachineController =
        StateMachineController.fromArtboard(artboard, "State Solar")!;
    artboard.play();
    artboard.addController(_stateMachineController);
    _stateMachineController.addEventListener((event) {
      print(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RiveAnimation.asset(
        "assets/first_integration.riv",
        onInit: _handleInitRive,
        artboard: 'System Solar',
      ),
    );
  }
}
