import 'package:sigmodern/head.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final loginFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                padding: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  color: SIGColors.primColor_wf,
                ),
                child: Form(
                  key: loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 28),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(SIGicons.arrowleft_icon),
                          iconSize: 24,
                          constraints: BoxConstraints(),
                          color: SIGColors.primColor_bkf,
                          style: IconButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '?????????',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                TextButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/signup');
                                  },
                                  child: Text(
                                    '????????????',
                                    style: TextStyle(
                                        color: SIGColors.pcColor_f,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  UserIdForm(),
                                  UserPwForm(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => UserFindId()));
                                        },
                                        child: Text(
                                          '????????? ??????',
                                          style: TextStyle(
                                            color: SIGColors.primColor_bk60,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 2,
                                        height: 14,
                                        decoration: BoxDecoration(
                                          border: Border(right: BorderSide(
                                            color: SIGColors.primColor_bk5,
                                            width: 2,
                                          )),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => UserFindPw()));
                                        },
                                        child: Text(
                                          '???????????? ??????',
                                          style: TextStyle(
                                            color: SIGColors.primColor_bk60,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      child: Text('?????????'),
                                      style: SIGButtonStyle.PrimElevBtn_l,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 50),
                                    child: Column(
                                      children: [
                                        Text(
                                          'SNS ???????????? ???????????? ??????????????????',
                                          style: TextStyle(
                                            color: SIGColors.primColor_bk60,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(top: 20),
                                          child: Column(
                                            children: [
                                              ElevatedButton(
                                                onPressed: (){
                                                  print('??????????????????');
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
                                                      '???????????? ?????????',
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
                                                  print('???????????????');
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
                                                      'Goggle??? ????????????',
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
                                                  print('Apple ?????????');
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
                                                    Text('Apple??? ????????????'),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
              // child: Container(
              //   width: MediaQuery.of(context).size.width/2,
              //   decoration: BoxDecoration(
              //     color: SIGColors.primColor_wf
              //   ),
              //   child: Column(
              //     children: [
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //       Text('1111'),
              //     ],
              //   ),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserIdForm extends StatelessWidget {
  UserIdForm({Key? key}) : super(key: key);

  final _userId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '?????????',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        TextFormField(
          controller: _userId,
          decoration: InputDecoration(
            hintText: 'example@abc.com',
            hintStyle: TextStyle(
              color: SIGColors.primColor_bk40
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: SIGColors.primColor_bk60, width: 2),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: SIGColors.pcColor_f, width: 2),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: SIGColors.errorColor, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}

class UserPwForm extends StatelessWidget {
  UserPwForm({Key? key}) : super(key: key);

  final _userPw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '????????????',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          TextFormField(
            controller: _userPw,
            obscureText: true,
            decoration: InputDecoration(
              hintText: '?????? + ?????? 8?????? ??????',
              hintStyle: TextStyle(
                  color: SIGColors.primColor_bk40
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 12),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: SIGColors.primColor_bk60, width: 2),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: SIGColors.pcColor_f, width: 2),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: SIGColors.errorColor, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


