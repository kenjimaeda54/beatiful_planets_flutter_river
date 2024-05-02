# Beatiful Planets
Projeto sobre curiosidades dos planetas

## Motivacao
Reforçar o uso do River em projetos Flutter ,usar os principais recurso que a ferramenta disponibiliza para criar aplicações animadas e interativas

## Feature
- Usei uma API disponibilizada no github  [api-solar-system](https://github.com/leovargasdev/api-solar-system)
- Para iniciar esse projeto precisa clonar esta API e rodar localmente
- Quando estiver usando animações através do state machine, precisa declarar o nome idêntico, cuidado com espaços e camelcase
- Abusei do uso do  [WidigetsBinding](https://www.dhiwise.com/post/widgetsflutterbinding-the-key-to-efficient-flutter-apps) para evitar erros de markBuild ou atualizar estado no momento de build
- Repara que meu State Machine no river vai estar com nome de State
  

``` dart
_handleInitRive(Artboard artboard) {
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

 RiveAnimation.asset(
                "assets/first_integration.riv",
                onInit: _handleInitRive,
                artboard: 'Onboarding System Solar',
                fit: BoxFit.cover,
              ),



```
##

- Maneira correta de usar o Dio com try catch
- Se estiver usando local é estiver capturando erro de não conectar com servidor, erro de biblioteca ou conexão recusada, experimenta usar o ip ao invés do localhost


``` dart
class Client {
  Future<DataOrException<DetailsPlanets>> getOnlyDetailsPlanet(
      {required String id}) async {
    try {
      final response = await dio.get(
        '/planet/$id',
      );
      if (response.statusCode == 200) {
        final data = DetailsPlanets.fromJson(response.data);
        return DataOrException(data: data, isSuccess: true);
      }
    } on DioException catch (_) {
      return DataOrException(isSuccess: false);
    }
    return DataOrException(isSuccess: false);
  }
}


//se der erro que nao conseguiu conectar precisa passar o ip
final dio = Dio(BaseOptions(
    baseUrl: 'http://192.168.0.5:3333/',
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
    receiveDataWhenStatusError: true));



```




