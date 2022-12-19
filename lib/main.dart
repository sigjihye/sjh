import 'package:provider/provider.dart';
import 'package:sigmodern/login/intro.dart';
import 'package:sigmodern/login/logIn.dart';
import 'package:sigmodern/login/signUp.dart';
import 'package:sigmodern/preview/mainView.dart';
import 'package:sigmodern/preview/preview_3d.dart';
import 'package:sigmodern/room_notifier.dart';

import './head.dart';

void main() {
  // final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  runApp(ChangeNotifierProvider<RoomNotifier>(
    create: (_) => RoomNotifier(),
    child: MaterialApp(
      title: 'SIGModern',
      theme: ThemeData(
        fontFamily: 'suit',
        iconTheme: IconThemeData(
          size: 16,
        ),
      ),
      initialRoute: '/',
      // navigatorKey: CGlobaliable.navigatorState,
      routes: {
        '/': (context) => IntroPage(),
        '/main': (context) => MainView(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUp(),
        '/previewstep1': (context) => PreviewStep1(),
        '/previewstep2': (context) => PreviewStep2(),
        '/previewstep3': (context) => PreviewStep3(),
        '/previewstep4': (context) => PreviewStep4(),
        '/preview3d': (context) => Preview3DViewer(),
        '/selectionList': (context) => SelectionList(),
        '/mypage': (context) => myPage(),
      },
    ),
  ));
}
