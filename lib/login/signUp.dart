import 'package:sigmodern/head.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final signupFormKey = GlobalKey<FormState>();
  final _usernewId = TextEditingController();
  final _usernewPw = TextEditingController();
  final _usernewPwConfirm = TextEditingController();
  final _usernewname = TextEditingController();
  final _usernewPhoneNum = TextEditingController();

  bool generalUserType = false;
  bool businessUserType = false;
  bool manufacturerUserType = false;

  bool allChecked = false;
  bool usepolicyBtn = false;
  bool privacyBtn = false;
  bool adverBtn = false;

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
                padding: EdgeInsets.symmetric(vertical: 32),
                decoration: BoxDecoration(
                  color: SIGColors.primColor_wf,
                ),
                child: Form(
                  key: signupFormKey,
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
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: SIGColors.primColor_bkf,
                                        ),
                                        text: 'SIG????????????\n',
                                        children: [
                                          TextSpan(
                                            text: "'",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "*",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: SIGColors.pcColor_f,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "' ????????? ???????????????????????????.",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 24),
                                    child: Text(
                                      '????????????',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600
                                      ),
                                    ),
                                  ),
                                  if(generalUserType == true)...[
                                    Text('zz'),
                                  ],
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: SIGColors.primColor_bkf
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: SIGColors.pcColor_f,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '????????????',
                                            ),
                                          ],
                                        ),
                                      ),
                                      userTypeSelect(
                                        generalUser : generalUserType,
                                        businessUser : businessUserType,
                                        manufacturerUser : manufacturerUserType,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: SIGColors.primColor_bkf
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: SIGColors.pcColor_f,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '?????????',
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _usernewId,
                                        decoration: InputDecoration(
                                          hintText: 'example@abc.com',
                                          hintStyle: TextStyle(
                                            color: SIGColors.primColor_bk40,
                                            fontSize: 14,
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
                                        onChanged: (idvalue){
                                          print("First text field: $idvalue");
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 32),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: SIGColors.primColor_bkf
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: SIGColors.pcColor_f,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '????????????',
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _usernewPw,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: '?????? + ?????? 8?????? ??????',
                                          hintStyle: TextStyle(
                                              color: SIGColors.primColor_bk40,
                                              fontSize: 14
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
                                        validator: (value){
                                          if(value!.isEmpty){
                                            print('8???????????? ??????');
                                          }
                                        },
                                        onChanged: (pwvalue){
                                          print("First text field: $pwvalue");
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 32),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: SIGColors.primColor_bkf
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: SIGColors.pcColor_f,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '???????????? ??????',
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _usernewPwConfirm,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          hintText: '??????????????? ?????? ??? ???????????????',
                                          hintStyle: TextStyle(
                                              color: SIGColors.primColor_bk40,
                                              fontSize: 14
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
                                  SizedBox(height: 32),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: SIGColors.primColor_bkf
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: SIGColors.pcColor_f,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '??????',
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _usernewname,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(RegExp(r'[a-z|A-Z|0-9|???-???|???-???|???-???|???|???|???|???]')),
                                        ],
                                        decoration: InputDecoration(
                                          hintText: '????????? ?????? ????????? ???????????????',
                                          hintStyle: TextStyle(
                                              color: SIGColors.primColor_bk40,
                                              fontSize: 14
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
                                  SizedBox(height: 32),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: SIGColors.primColor_bkf
                                          ),
                                          children: [
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: SIGColors.pcColor_f,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '???????????? ??????',
                                            ),
                                          ],
                                        ),
                                      ),
                                      TextFormField(
                                        controller: _usernewPhoneNum,
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.deny(RegExp('[ ,.-]')),
                                        ],
                                        decoration: InputDecoration(
                                          hintText: '???????????? ??????????????? ????????????',
                                          hintStyle: TextStyle(
                                              color: SIGColors.primColor_bk40,
                                              fontSize: 14
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
                                      Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.only(top: 12),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            ElevatedButton(
                                              onPressed: (){},
                                              child: Text(
                                                '????????????',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: SIGColors.pcColor_f,
                                                ),
                                              ),
                                              // style: SIGButtonStyle.pcOtlBtn_l,
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 14),
                                                elevation: 0,
                                                backgroundColor: SIGColors.primColor_wf,
                                                side: BorderSide(
                                                    color: SIGColors.pcColor_f
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          TextFormField(
                                            controller: _usernewId,
                                            decoration: InputDecoration(
                                              hintText: '???????????? ??????',
                                              hintStyle: TextStyle(
                                                  color: SIGColors.primColor_bk40,
                                                  fontSize: 14
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
                                          Positioned(
                                            right: 24,
                                            bottom: 12,
                                            child: Text('4:00'),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 24),
                            decoration: BoxDecoration(
                              border: Border(top: BorderSide(
                                color: SIGColors.primColor_bk5,
                                width: 8,
                              )),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 56 , bottom: 24, right: 56),
                                  child: Text(
                                    '????????????',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 56),
                                  decoration: BoxDecoration(
                                      border: Border(
                                        top: BorderSide(color: SIGColors.primColor_bk13),
                                        bottom: BorderSide(color: SIGColors.primColor_bk13),
                                      )
                                  ),
                                  child: ElevatedButton(
                                    onPressed: (){
                                      setState(() {
                                        allChecked = !allChecked;

                                        if(allChecked == true){
                                          usepolicyBtn = true;
                                          privacyBtn = true;
                                          adverBtn = true;
                                        } else if(allChecked == false){
                                          usepolicyBtn = false;
                                          privacyBtn = false;
                                          adverBtn = false;
                                        }
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.transparent,
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 20,
                                              margin: EdgeInsets.only(right: 12),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: allChecked ? SIGColors.pcColor_f : SIGColors.primColor_bk40,
                                                    width: 2,
                                                  ),
                                                  shape: BoxShape.circle
                                              ),
                                            ),
                                            allChecked ? Positioned(
                                                top: 5.3,
                                                left: 5.6,
                                                child: Container(
                                                  width: 9,
                                                  height: 9,
                                                  decoration: BoxDecoration(
                                                    color: SIGColors.pcColor_f,
                                                    shape: BoxShape.circle,
                                                  ),
                                                )
                                            ) : SizedBox(),
                                          ],
                                        ),
                                        Text(
                                          '?????? ????????????',
                                          style: TextStyle(
                                              color: SIGColors.primColor_bkf,
                                              fontSize: 16
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 56),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(bottom: 8),
                                        decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(
                                              color: SIGColors.primColor_bk5
                                          )),
                                        ),
                                        child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              usepolicyBtn = !usepolicyBtn;
                                              if(usepolicyBtn == false){
                                                allChecked = false;
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Colors.transparent,
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    margin: EdgeInsets.only(right: 12),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: usepolicyBtn ? SIGColors.pcColor_f : SIGColors.primColor_bk40,
                                                          width: 2,
                                                        ),
                                                        shape: BoxShape.circle
                                                    ),
                                                  ),
                                                  usepolicyBtn ? Positioned(
                                                      top: 5.3,
                                                      left: 5.6,
                                                      child: Container(
                                                        width: 9,
                                                        height: 9,
                                                        decoration: BoxDecoration(
                                                          color: SIGColors.pcColor_f,
                                                          shape: BoxShape.circle,
                                                        ),
                                                      )
                                                  ) : SizedBox(),
                                                ],
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  style: TextStyle(
                                                    color: SIGColors.primColor_bkf,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: '???????????? ??????',
                                                    ),
                                                    TextSpan(
                                                        text: '(*??????)',
                                                        style: TextStyle(
                                                          color: SIGColors.pcColor_f,
                                                        )
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: ElevatedButton(
                                          onPressed: (){
                                            setState(() {
                                              privacyBtn = !privacyBtn;
                                              if(privacyBtn == false){
                                                allChecked = false;
                                              }
                                            });
                                          },
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: Colors.transparent,
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Row(
                                            children: [
                                              Stack(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    margin: EdgeInsets.only(right: 12),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: privacyBtn ? SIGColors.pcColor_f : SIGColors.primColor_bk40,
                                                          width: 2,
                                                        ),
                                                        shape: BoxShape.circle
                                                    ),
                                                  ),
                                                  privacyBtn ? Positioned(
                                                      top: 5.3,
                                                      left: 5.6,
                                                      child: Container(
                                                        width: 9,
                                                        height: 9,
                                                        decoration: BoxDecoration(
                                                          color: SIGColors.pcColor_f,
                                                          shape: BoxShape.circle,
                                                        ),
                                                      )
                                                  ) : SizedBox(),
                                                ],
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  style: TextStyle(
                                                    color: SIGColors.primColor_bkf,
                                                  ),
                                                  children: [
                                                    TextSpan(
                                                      text: '???????????? ?????? ??? ????????????',
                                                    ),
                                                    TextSpan(
                                                        text: '(*??????)',
                                                        style: TextStyle(
                                                          color: SIGColors.pcColor_f,
                                                        )
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Container(
                                          padding: EdgeInsets.only(top: 8),
                                          decoration: BoxDecoration(
                                            border: Border(top: BorderSide(
                                                color: SIGColors.primColor_bk5
                                            )),
                                          ),
                                          child: ElevatedButton(
                                            onPressed: (){
                                              setState(() {
                                                adverBtn = !adverBtn;
                                                if(adverBtn == false){
                                                  allChecked = false;
                                                }
                                              });
                                            },
                                            style: ElevatedButton.styleFrom(
                                              elevation: 0,
                                              backgroundColor: Colors.transparent,
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Row(
                                              children: [
                                                Stack(
                                                  children: [
                                                    Container(
                                                      width: 20,
                                                      height: 20,
                                                      margin: EdgeInsets.only(right: 12),
                                                      decoration: BoxDecoration(
                                                          border: Border.all(
                                                            color: adverBtn ? SIGColors.pcColor_f : SIGColors.primColor_bk40,
                                                            width: 2,
                                                          ),
                                                          shape: BoxShape.circle
                                                      ),
                                                    ),
                                                    adverBtn ? Positioned(
                                                        top: 5.3,
                                                        left: 5.6,
                                                        child: Container(
                                                          width: 9,
                                                          height: 9,
                                                          decoration: BoxDecoration(
                                                            color: SIGColors.pcColor_f,
                                                            shape: BoxShape.circle,
                                                          ),
                                                        )
                                                    ) : SizedBox(),
                                                  ],
                                                ),
                                                RichText(
                                                  text: TextSpan(
                                                    style: TextStyle(
                                                      color: SIGColors.primColor_bkf,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '???????????????????????????',
                                                      ),
                                                      TextSpan(
                                                        text: '(??????)',
                                                        style: TextStyle(
                                                          color: SIGColors.primColor_bk40,
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
                                // if(businessUserType == true)
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.only(top: 24),
                                  decoration: BoxDecoration(
                                    border: Border(top: BorderSide(
                                      color: SIGColors.primColor_bk5,
                                      width: 8,
                                    )),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 56 , bottom: 24, right: 56),
                                        child: Text(
                                          '????????????',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 56),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: SIGColors.primColor_bkf
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '??????',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                // Flexible(
                                                //     child: TextFormField(
                                                //     controller: _usernewId,
                                                //     decoration: InputDecoration(
                                                //       hintText: '????????? ???????????????',
                                                //       hintStyle: TextStyle(
                                                //         color: SIGColors.primColor_bk40,
                                                //         fontSize: 14,
                                                //       ),
                                                //       contentPadding: EdgeInsets.symmetric(horizontal: 12),
                                                //       enabledBorder: UnderlineInputBorder(
                                                //         borderSide: BorderSide(color: SIGColors.primColor_bk13, width: 2),
                                                //       ),
                                                //       focusedBorder: UnderlineInputBorder(
                                                //         borderSide: BorderSide(color: SIGColors.pcColor_f, width: 2),
                                                //       ),
                                                //       errorBorder: UnderlineInputBorder(
                                                //         borderSide: BorderSide(color: SIGColors.errorColor, width: 2),
                                                //       ),
                                                //     ),
                                                //   ),
                                                // ),
                                                Expanded(
                                                  child: GestureDetector(
                                                    onTap: (){},
                                                    child: Container(
                                                      height: 48,
                                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                                      decoration: BoxDecoration(
                                                        border: Border(
                                                           bottom: BorderSide(
                                                             color: SIGColors.primColor_bk13,
                                                             width: 2,
                                                           ),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment: Alignment.centerLeft,
                                                        child: Text(
                                                          '????????? ???????????????',
                                                          style: TextStyle(
                                                            color: SIGColors.primColor_bk40,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.only(left: 20),
                                                  child: ElevatedButton(
                                                    onPressed: (){},
                                                    style: ElevatedButton.styleFrom(
                                                      backgroundColor: SIGColors.primColor_bk5,
                                                      elevation: 0,
                                                      padding: EdgeInsets.zero,
                                                      minimumSize: Size(84, 40)
                                                    ),
                                                    child: Text(
                                                      '????????????',
                                                      style: TextStyle(
                                                        color: SIGColors.primColor_bkf,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            TextFormField(
                                              controller: _usernewId,
                                              decoration: InputDecoration(
                                                hintText: '??????????????? ???????????????',
                                                hintStyle: TextStyle(
                                                  color: SIGColors.primColor_bk40,
                                                  fontSize: 14,
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
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 56),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: SIGColors.primColor_bkf
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '*',
                                                    style: TextStyle(
                                                      color: SIGColors.pcColor_f,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '?????????',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            TextFormField(
                                              controller: _usernewId,
                                              decoration: InputDecoration(
                                                hintText: '???????????? ???????????????',
                                                hintStyle: TextStyle(
                                                  color: SIGColors.primColor_bk40,
                                                  fontSize: 14,
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
                                      ),
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 56),
                                        margin: EdgeInsets.only(top: 32),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: SIGColors.primColor_bkf
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: '*',
                                                    style: TextStyle(
                                                      color: SIGColors.pcColor_f,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '????????? ????????????',
                                                  ),
                                                ],
                                              ),
                                            ),
                                            TextFormField(
                                              controller: _usernewId,
                                              decoration: InputDecoration(
                                                hintText: '????????? ??????????????? ???????????????',
                                                hintStyle: TextStyle(
                                                  color: SIGColors.primColor_bk40,
                                                  fontSize: 14,
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
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 48,
                            margin: EdgeInsets.only(bottom: 40, top: 56),
                            padding: EdgeInsets.symmetric(horizontal: 40),
                            child: ElevatedButton(
                              onPressed: (){
                                if(usepolicyBtn == false && privacyBtn == false){
                                  print('?????? ?????????');

                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return Disagreeable();
                                      }
                                  );
                                } else if(usepolicyBtn == true && privacyBtn == false) {
                                  print('??????????????? ??????');
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return Disagreeable();
                                      }
                                  );
                                } else if(usepolicyBtn == false && privacyBtn == true){
                                  print('????????????????????? ??????');
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (context) {
                                        return Disagreeable();
                                      }
                                  );
                                } else {
                                  print('??????!');
                                }
                              },
                              child: Text('????????????'),
                              style: SIGButtonStyle.PrimElevBtn_l,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.only(top: 24),
                            decoration: BoxDecoration(
                              border: Border(top: BorderSide(
                                color: SIGColors.primColor_bk5,
                                width: 8,
                              )),
                            ),
                          ),
                        ],
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

class Disagreeable extends StatelessWidget {
  const Disagreeable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 2,
      title: Text(
        '?????? ?????? ?????????',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '?????? ???????????? ??????????????????',
            style: TextStyle(fontSize: 14),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(SIGColors.pcColor_f),
                      elevation: MaterialStatePropertyAll(0)
                  ),
                  child: Text('??????', style: TextStyle(color: SIGColors.primColor_wf)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class userTypeSelect extends StatefulWidget {
  userTypeSelect({Key? key, required this.generalUser, required this.businessUser, required this.manufacturerUser}) : super(key: key);

  @override
  State<userTypeSelect> createState() => _userTypeSelectState();

  var generalUser;
  var businessUser;
  var manufacturerUser;
}

class _userTypeSelectState extends State<userTypeSelect> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24, top: 8,),
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(
            color: SIGColors.pcColor_f
        ),
      ),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () {
                print('??????');
                print(widget.generalUser);

                setState(() {
                  widget.generalUser = !widget.generalUser;
                  print(widget.generalUser);

                  if(widget.generalUser == true){
                    widget.businessUser = false;
                    widget.manufacturerUser = false;
                  }
                });
              },
              child: Container(
                color: widget.generalUser ? SIGColors.pcColor_f : Colors.transparent ,
                child: Center(
                  child: Text(
                    '?????? ??????',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: widget.generalUser ? SIGColors.primColor_wf : SIGColors.primColor_bkf,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () {
                print('?????????');

                setState(() {
                  widget.businessUser = !widget.businessUser;
                  print(widget.businessUser);

                  if(widget.businessUser == true){
                    widget.manufacturerUser = false;
                    widget.generalUser = false;
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: SIGColors.pcColor_f),
                    right: BorderSide(color: SIGColors.pcColor_f),
                  ),
                  color: widget.businessUser ? SIGColors.pcColor_f : Colors.transparent,
                ),
                child: Center(
                  child: Text(
                    '????????? ??????',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: widget.businessUser ? SIGColors.primColor_wf : SIGColors.primColor_bkf
                    ),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: GestureDetector(
              onTap: () {
                print('????????????');

                setState(() {
                  widget.manufacturerUser = !widget.manufacturerUser;
                  print(widget.manufacturerUser);

                  if(widget.manufacturerUser == true){
                    widget.businessUser = false;
                    widget.generalUser = false;
                  }
                });
              },
              child: Container(
                color: widget.manufacturerUser ? SIGColors.pcColor_f : Colors.transparent,
                child: Center(
                  child: Text(
                    '???????????? ??????',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: widget.manufacturerUser ? SIGColors.primColor_wf : SIGColors.primColor_bkf
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

