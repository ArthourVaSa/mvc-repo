import 'package:mvc_app/myHomepageScreen/my_home_page.dart';

class MyHomePageIncrementController implements MyHomePageDelegate {
  final MyHomePage myHomePage;

  MyHomePageIncrementController({
    required this.myHomePage,
  });

  void init() {
    myHomePage.myHomePageDelegate = this;
  }

  @override
  void didActionButton() {
    myHomePage.counter.value++;
  }

  static MyHomePage build() {
    MyHomePage myHomePage = MyHomePage();
    MyHomePageIncrementController myHomePageController =
        MyHomePageIncrementController(myHomePage: myHomePage);
    myHomePageController.init();
    return myHomePage;
  }
}