import 'package:mvc_app/myHomepageScreen/my_home_page.dart';

class MyHomePageDeincrementController implements MyHomePageDelegate {
  final MyHomePageAbstract myHomePage;
  final WebServiceInterface webService;

  MyHomePageDeincrementController({
    required this.myHomePage,
    required this.webService,
  });

  void init() {
    myHomePage.myHomePageDelegate = this;
  }

  @override
  void didActionButton() {
    if (myHomePage.counter.value > -10) {
      myHomePage.counter.value--;
    } else {
      //TODO: Usa un nombre decente mierda
      myHomePage.printToast();
    }
  }

  //TODO: WTF if this shit
  void fetch() {
    webService.getMessages((List<String> messages) {
      print(messages);
    });
  }
}

class Creador {
  MyHomePage creacion() {
    print("aaa");
    final myHomePage = MyHomePage();
    final myHomePageController =
        MyHomePageDeincrementController(
      myHomePage: myHomePage,
      webService: WebService(),
    );
    myHomePageController.init();
    return myHomePage;
  }
}

abstract class WebServiceInterface {

  void getMessages(
    Function(List<String> messages) onSuccess,
  );  
}

class WebService implements WebServiceInterface {
  @override
  void getMessages(
    Function(List<String> messages) onSuccess,
  ) {
    onSuccess(['Message 1', 'Message 2', 'Message 3']);
  }
}
