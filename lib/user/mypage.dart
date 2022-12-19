import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sigmodern/head.dart';

class myPage extends StatefulWidget {
  const myPage({Key? key}) : super(key: key);

  @override
  State<myPage> createState() => _myPageState();

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    // super.initState();
  }
}

class _myPageState extends State<myPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: SIGColors.primColor_wf
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 160),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, top: 37, right: 42, bottom: 32),
                      decoration: BoxDecoration(
                          color: SIGColors.primColor_bkf
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '내 정보',
                                style: TextStyle(
                                  fontSize: 28,
                                  color: SIGColors.primColor_wf,
                                  fontWeight: FontWeight.w600
                                ),
                              ),
                              Row(
                                children: [
                                  Text('',),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 22
                                      ),
                                      text: '안녕하세요. ',
                                      children: [
                                        TextSpan(
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                          ),
                                          text: '패스트파이브 님'
                                        ),
                                      ]
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 32),
                                    child: ElevatedButton(
                                      onPressed: (){},
                                      style: ElevatedButton.styleFrom(
                                        // padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                        padding: EdgeInsets.zero,
                                        backgroundColor: SIGColors.primColor_w7,
                                        // maximumSize: Size(48, 32),
                                        minimumSize: Size(48, 32)
                                      ),
                                      child: Text(
                                        '수정',
                                        style: TextStyle(
                                          color: SIGColors.primColor_bkf,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                              side: BorderSide(
                                color: SIGColors.primColor_wf
                              ),
                              backgroundColor: Colors.transparent,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  SIGicons.settingsoutlined_icon,
                                  size: 13,
                                  color: SIGColors.primColor_wf,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Text('앱 설정'),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            // height: MediaQuery.of(context).size.height,
                            height: MediaQuery.of(context).size.height - 160,
                            padding: EdgeInsets.all(32),
                            decoration: BoxDecoration(
                              border: Border(right: BorderSide(
                                width: 8,
                                color: SIGColors.primColor_bk3,
                              )),
                            ),
                            child: Text('test'),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            // height: MediaQuery.of(context).size.height,
                            // padding: EdgeInsets.only(top: 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 28, bottom: 24, top: 32,),
                                  child: Text(
                                    '고객지원',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: Colors.transparent,
                                      // side: BorderSide(
                                      //   color: SIGColors.primColor_bk5,
                                      // ),
                                      padding: EdgeInsets.only(left: 28, right: 32)
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '자주하는 질문',
                                          style: TextStyle(
                                            color: SIGColors.primColor_bkf,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          SIGicons.arrowright_icon,
                                          color: SIGColors.primColor_bk40,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: sideNavBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class sideNavBar extends StatefulWidget {
  const sideNavBar({Key? key}) : super(key: key);

  @override
  State<sideNavBar> createState() => _sideNavBarState();
}

class _sideNavBarState extends State<sideNavBar> with TickerProviderStateMixin {
  bool slideOpen = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: slideOpen ? 160 : 72,
          decoration: BoxDecoration(
              color: SIGColors.primColor_bk3
          ),
          padding: slideOpen ? EdgeInsets.only(left: 16, top: 26, right: 16, bottom: 32)
              : EdgeInsets.only(left: 15, top: 26, right: 15, bottom: 32),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: slideOpen ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    slideOpen ? Icon(
                      SIGicons.sig_logo,
                      size: 24,
                      color: SIGColors.primColor_bk80,
                    ) : SizedBox(),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          slideOpen = !slideOpen;
                        });
                      },
                      child: Icon(
                        SIGicons.double_arrow_left,
                        size: 24,
                        color: SIGColors.primColor_bk13,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/main');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:  slideOpen ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Homeicon_un.png'),
                    slideOpen ? Padding(
                      padding: EdgeInsets.only(left: 12),
                      child:  Text(
                        '홈',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ) ,
                    ) : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: (){
                  // Navigator.pushNamed(context, '/preview3d');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:  slideOpen ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Estimateicon_un.png'),
                    slideOpen ? Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '견적내기',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ),
                    ) : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/preview3d');
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:  slideOpen ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Viewicon_un.png'),
                    slideOpen ? Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '미리보기',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ) ,
                    ) : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:  slideOpen ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/MyEstiicon_un.png'),
                    slideOpen ? Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '내 견적',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ),
                    ) : SizedBox(),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: SIGColors.primColor_wf,
                  padding: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment:  slideOpen ? MainAxisAlignment.start : MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/Mypageicon.png'),
                    slideOpen ? Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '내 정보',
                        style: TextStyle(
                            color: SIGColors.primColor_bkf
                        ),
                      ),
                    ) : SizedBox(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: slideOpen ? 32 : 12,
          bottom: 32,
          child: ElevatedButton(
            onPressed: (){},
            child: Icon(
              SIGicons.chatbubble_icon,
              size: 18,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: SIGColors.primColor_bkf,
              padding: EdgeInsets.zero,
              minimumSize: Size(40, 40),
              // maximumSize: Size(38, 42)
            ),
          ),
        ),
      ],
    );
  }
}
