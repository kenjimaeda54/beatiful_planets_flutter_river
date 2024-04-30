import 'dart:async';

import 'package:beatiful_planets_flutter/screens/home/home.dart';
import 'package:beatiful_planets_flutter/themes/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';
import 'package:flutter/src/painting/gradient.dart' as Linear;
import 'package:slide_action/slide_action.dart';

class Onboarding extends StatefulWidget {
  Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late final StateMachineController _controller;
  Offset offset = Offset.zero;
  double _scale = 0;
  SMIInput<bool>? _startRocket;
  bool _isVisibleBottomNavigation = true;
  _handleInitRive(Artboard artboard) {
    //nome do State Machine precisa ser identico ao que esta no Editor
    //sem espaco nem nada
    _controller = StateMachineController.fromArtboard(artboard, "State")!;
    artboard.play();
    artboard.addController(_controller);
    _startRocket = _controller.findInput<bool>('startRocket');

    _controller.addEventListener((event) {
      if (event.name == "finishedRockset") {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.of(context).push(Home.route());
        });
      }

      if (event.name == "finishedDescription") {
        //precisa do uso AddPostFrame porque se nao vai dar erro
        //de markBuild
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          setState(() {
            setState(() {
              _scale = 1.0;
            });
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: primaryColor,
          ),
          bottomNavigationBar: _isVisibleBottomNavigation
              ? SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: AnimatedScale(
                          scale: _scale,
                          duration: const Duration(milliseconds: 800),
                          child: SlideAction(
                              trackBuilder: (context, _) => Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: const Linear.LinearGradient(
                                            colors: [
                                              primaryGradient,
                                              secondGradient,
                                            ])),
                                  ),
                              thumbBuilder: (context, _) => Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        gradient: const Linear.LinearGradient(
                                            colors: [
                                              primaryGradient,
                                              secondGradient,
                                            ])),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 13,
                                          child: Image.asset(
                                            "assets/images/Forward.png",
                                            width: 30,
                                            height: 30,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 13,
                                          child: Image.asset(
                                            "assets/images/Forward.png",
                                            width: 30,
                                            height: 30,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              action: () {
                                setState(() {
                                  _isVisibleBottomNavigation = false;
                                });
                                _startRocket?.value = true;
                              }))))
              : null,
          body: Stack(
            children: [
              RiveAnimation.asset(
                "assets/first_integration.riv",
                onInit: _handleInitRive,
                artboard: 'Onboarding System Solar',
                fit: BoxFit.cover,
              ),
            ],
          )),
    );
  }
}
