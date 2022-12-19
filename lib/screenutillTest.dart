import 'head.dart';

class screenTest extends StatefulWidget {
  const screenTest({Key? key}) : super(key: key);

  @override
  State<screenTest> createState() => _screenTestState();
}

class _screenTestState extends State<screenTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: Text('나온당'),
      ),
    );
    // return ScreenUtilInit(
    //   designSize: Size(1024, 600),
    //   builder: (context, child) {
    //
    //   },
    //   child: Container(),
    // );
  }
}
