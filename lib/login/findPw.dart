import 'package:sigmodern/head.dart';

class UserFindPw extends StatefulWidget {
  UserFindPw({Key? key}) : super(key: key);

  @override
  State<UserFindPw> createState() => _UserFindPwState();
}

class _UserFindPwState extends State<UserFindPw> {

  final searchPwFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/intro_back_img.png'), fit: BoxFit.cover,),
        ),
        child: Stack(
          children: [
            Row(
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
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                          color: SIGColors.primColor_wf,
                        ),
                        child: Form(
                          key: searchPwFormKey,
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
                                          '비밀번호 찾기',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SearchPwForm(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                color: SIGColors.primColor_wf,
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
                child:ElevatedButton(
                  onPressed: (){},
                  child: Text('비밀번호 찾기'),
                  style: SIGButtonStyle.PrimElevBtn_l,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}


class SearchPwForm extends StatelessWidget {
  SearchPwForm({Key? key}) : super(key: key);

  final _userSearchPw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '아이디',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        TextFormField(
          controller: _userSearchPw,
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
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        Text(
          '가입했던 아이디와 동일한 이메일 주소로 비밀번호가 전송됩니다.',
          style: TextStyle(
            color: SIGColors.pcColor_f,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}