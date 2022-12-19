import 'package:sigmodern/head.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/intro_back_img.png'), fit: BoxFit.cover,),
        ),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: Center(
                child: Image.asset(
                  'assets/images/SIG_intro_logo.png',
                  width: MediaQuery.of(context).size.width * 0.14,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32), bottomLeft: Radius.circular(32)),
                  color: SIGColors.primColor_bk80,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 24),
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: SIGColors.primColor_wf,
                                fontWeight: FontWeight.w300,
                              ),
                              text: '지금 바로 SIG에서 문짝 샘플을\n',
                              children: const [
                                TextSpan(
                                  text: '쉽고 간편하게 살펴보세요',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),
                                )
                              ]
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(border: Border(top: BorderSide(color: SIGColors.primColor_w2))
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '기존 아이디가 있으신가요?',
                                    style: TextStyle(
                                      color: SIGColors.primColor_w7,
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/login');
                                    },
                                    child: Text(
                                      '로그인',
                                      style: TextStyle(
                                        color: SIGColors.pcColor_f,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                ElevatedButton(
                                  onPressed: (){
                                    print('카카오로그인');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFEE500),
                                    maximumSize: Size.fromHeight(48),
                                    elevation: 0,
                                    minimumSize: Size.fromHeight(48),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 12),
                                        child: Icon(Icons.star),
                                      ),
                                      Text(
                                        '카카오로 로그인',
                                        style: TextStyle(
                                          color: SIGColors.primColor_bkf,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: (){
                                    print('구글로그인');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: SIGColors.primColor_wf,
                                    side: BorderSide(color: SIGColors.primColor_bk13),
                                    maximumSize: Size.fromHeight(48),
                                    elevation: 0,
                                    minimumSize: Size.fromHeight(48),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 12),
                                        child: Icon(Icons.star),
                                      ),
                                      Text(
                                        'Goggle로 회원가입',
                                        style: TextStyle(
                                          color: SIGColors.primColor_bkf,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: (){
                                    print('Apple 로그인');
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: SIGColors.primColor_bkf,
                                    maximumSize: Size.fromHeight(48),
                                    elevation: 0,
                                    minimumSize: Size.fromHeight(48),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 12),
                                        child: Icon(Icons.star),
                                      ),
                                      Text('Apple로 회원가입'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 48,
                              margin: EdgeInsets.only(top: 24),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/main');
                                },
                                child: Text(
                                    '간편회원가입',
                                    style: TextStyle(
                                        color: SIGColors.primColor_bkf,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16
                                    )
                                ),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(SIGColors.primColor_wf),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
