import 'package:flutter/services.dart';
import 'package:sigmodern/head.dart';

class UserFindId extends StatelessWidget {
  UserFindId({Key? key}) : super(key: key);

  final searchIdFormKey = GlobalKey<FormState>();
  final _userId = TextEditingController();
  final _userPhone = TextEditingController();

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
                  child: Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: MediaQuery.of(context).size.height,
                    padding: EdgeInsets.symmetric(vertical: 40),
                    decoration: BoxDecoration(
                      color: SIGColors.primColor_wf,
                    ),
                    child: Form(
                      key: searchIdFormKey,
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
                                      '이메일 찾기',
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
                                      UserName(userId : _userId),
                                      UserPNum(userPhone : _userPhone),
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
                  child: Text('이메일 찾기'),
                  style: SIGButtonStyle.PrimElevBtn_l,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width/2,
          ),

        ],
      ),
    );
  }
}


class UserName extends StatelessWidget {
  UserName({Key? key, this.userId}) : super(key: key);

  final userId;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '이름',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        TextFormField(
          controller: userId,
          decoration: InputDecoration(
            hintText: '가입하신 분의 이름',
            hintStyle: TextStyle(
                color: SIGColors.primColor_bk13
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


class UserPNum extends StatelessWidget {
  UserPNum({Key? key, this.userPhone}) : super(key: key);

  final userPhone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '휴대폰 번호',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          TextFormField(
            controller: userPhone,
            keyboardType: TextInputType.number,
            inputFormatters: [
              // FilteringTextInputFormatter.allow(RegExp('0-9')),
              FilteringTextInputFormatter.deny(RegExp('[ ,.-]')),
            ],
            decoration: InputDecoration(
              hintText: "'-'없이 입력하세요",
              hintStyle: TextStyle(
                  color: SIGColors.primColor_bk13
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