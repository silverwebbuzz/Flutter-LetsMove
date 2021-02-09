import 'package:bloc/bloc.dart';
import 'package:lets_move/homepage.dart';

enum DrawerEvents {
  HomePageClickedEvent,
  // Page2ClickedEvent,
  // Page3ClickedEvent,
}

abstract class DrawerStates {}

class DrawerBloc extends Bloc<DrawerEvents, DrawerStates> {
  @override
  DrawerStates get initialState => HomePage();

  @override
  Stream<DrawerStates> mapEventToState(DrawerEvents event) async* {
    switch (event) {
      case DrawerEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      // case DrawerEvents.Page2ClickedEvent:
      //   yield Page2();
      //   break;
      // case DrawerEvents.Page3ClickedEvent:
      //   yield Page3();
      //   break;
    }
  }
}