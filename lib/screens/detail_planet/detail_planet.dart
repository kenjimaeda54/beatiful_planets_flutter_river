import 'package:beatiful_planets_flutter/client/client.dart';
import 'package:beatiful_planets_flutter/data/data_or_expection.dart';
import 'package:beatiful_planets_flutter/models/details_planets/details_planets.dart';
import 'package:beatiful_planets_flutter/screens/detail_planet/widget/feature_planet.dart';
import 'package:beatiful_planets_flutter/themes/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class DetailPlanet extends StatefulWidget {
  final String planetId;
  //usar um future para verificar o resultado
  const DetailPlanet({super.key, required this.planetId});

  static Route route({required String planetId}) {
    return PageRouteBuilder(
        pageBuilder: (_, __, ___) => DetailPlanet(
              planetId: planetId,
            ),
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
  State<DetailPlanet> createState() => _DetailPlanetState();
}

class _DetailPlanetState extends State<DetailPlanet> {
  late final StateMachineController _stateMachineController;
  final _client = Client();
  bool _isDoneAnimationLoading = false;
  SMIInput<bool>? _haveData;

  _handleInitRiveLoading(Artboard artboard) {
    _stateMachineController =
        StateMachineController.fromArtboard(artboard, "State")!;
    artboard.play();
    artboard.addController(_stateMachineController);

    _stateMachineController.addEventListener((event) {
      if (event.name == "isFinishedLoading") {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          setState(() {
            _isDoneAnimationLoading = true;
          });
        });
      }
    });

    _haveData = _stateMachineController.findInput<bool>("isSuccess");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _client.getOnlyDetailsPlanet(id: widget.planetId),
        builder: (BuildContext context,
            AsyncSnapshot<DataOrException<DetailsPlanets>> snapshot) {
          if (snapshot.hasData) {
            _haveData?.value = true;
          }
          if (snapshot.hasData && _isDoneAnimationLoading) {
            final dataOrException = snapshot.data;
            return SafeArea(
              child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: primaryColor,
                    leading: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                      iconSize: 18,
                      color: white,
                    ),
                  ),
                  backgroundColor: primaryColor,
                  body: Body(
                    detailPlanet: dataOrException!.data!,
                  )),
            );
          }
          return RiveAnimation.asset(
            "assets/first_integration.riv",
            onInit: _handleInitRiveLoading,
            artboard: 'Loading',
            fit: BoxFit.cover,
          );
        });
  }
}

class Body extends StatefulWidget {
  final DetailsPlanets detailPlanet;

  Body({super.key, required this.detailPlanet});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String artboardName = "";
  final Map<String, String> artboards = {
    "4": "mars",
    "8": "neptune",
    "9": "pluto",
    "2": "venus",
    "3": "earth",
    "5": "jupiter",
    "0": "sun"
  };

  @override
  initState() {
    super.initState();
    setState(() {
      artboardName = artboards[widget.detailPlanet.id] ?? "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 10, top: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GradientText(
                  widget.detailPlanet.name,
                  colors: const [primaryGradient, secondGradient],
                  style: const TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: white),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: RiveAnimation.asset(
                    "assets/first_integration.riv",
                    artboard: artboardName,
                    fit: BoxFit.fitWidth,
                    controllers: [OneShotAnimation("loop")],
                    stateMachines: ['State'],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureDetailPlanet(
                    artboard: "gravity",
                    feature: widget.detailPlanet.features.gravity),
                FeatureDetailPlanet(
                    artboard: "thermometer",
                    feature: widget.detailPlanet.features.temperature),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureDetailPlanet(
                    artboard: "diameter",
                    feature: widget.detailPlanet.features.diameter),
                FeatureDetailPlanet(
                    artboard: "radius",
                    feature: widget.detailPlanet.features.radius),
              ],
            ),
            Text(
              widget.detailPlanet.resume,
              style: const TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  fontSize: 15,
                  color: white,
                  height: 1.5),
            )
          ],
        ),
      ),
    );
  }
}
