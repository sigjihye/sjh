import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sigmodern/head.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 0;

  PageController pageController =
      PageController(initialPage: 0, keepPage: true);

  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
    super.initState();
  }

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
              child: Container(
                decoration: BoxDecoration(
                    color: SIGColors.primColor_wf
                ),
                padding: EdgeInsets.only(top: 40, bottom: 40, right: 40, left: 200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                            // fontSize: 24,
                            fontSize: ScreenUtil().setSp(16),
                            color: SIGColors.primColor_bkf,
                            fontWeight: FontWeight.w300,
                          ),
                          text: '지금 바로 도어 샘플을\n',
                          children: const [
                            TextSpan(
                              text: '쉽고 간편하게 살펴보세요',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ]
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => PreviewStep1()));
                      },
                      child: Stack(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 218,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              child: Image.asset(
                                'assets/images/kitchen.png',
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 24,
                            child: Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: '주방',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 22,
                                          color: SIGColors.primColor_wf,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: ' 싱크장',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ])),
                                Container(
                                  width: 32,
                                  height: 32,
                                  margin: EdgeInsets.only(left: 16),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: SIGColors.primColor_wf,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Icon(
                                    SIGicons.arrowright_icon,
                                    color: SIGColors.primColor_wf,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return commingSoonAlert();
                                });
                            },
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 104,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    child: Image.asset(
                                      'assets/images/whoe.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 24,
                                  bottom: 24,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '준비중입니다.',
                                        style: TextStyle(
                                            color: SIGColors.primColor_wf,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                                text: '현관',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 22,
                                                  color: SIGColors.primColor_wf,
                                                ),
                                                children: [
                                                  TextSpan(
                                                    text: ' 신발장',
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                    ),
                                                  )
                                                ]
                                            ),
                                          ),
                                          Container(
                                            width: 32,
                                            height: 32,
                                            margin: EdgeInsets.only(left: 16),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: SIGColors.primColor_wf,
                                              ),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(4)),
                                            ),
                                            child: Icon(
                                              SIGicons.arrowright_icon,
                                              color: SIGColors.primColor_wf,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return commingSoonAlert();
                                  });
                            },
                            child: Stack(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  height: 104,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    child: Image.asset(
                                      'assets/images/whoe.png',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: 24,
                                  bottom: 24,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '준비중입니다.',
                                        style: TextStyle(
                                            color: SIGColors.primColor_wf,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: '붙박이장',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 22,
                                                color: SIGColors.primColor_wf,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 32,
                                            height: 32,
                                            margin: EdgeInsets.only(left: 16),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: SIGColors.primColor_wf,
                                              ),
                                              borderRadius:
                                              BorderRadius.all(Radius.circular(4)),
                                            ),
                                            child: Icon(
                                              SIGicons.arrowright_icon,
                                              color: SIGColors.primColor_wf,
                                            ),
                                          ),
                                        ],
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
                    // Container(
                    //   padding: EdgeInsets.only(top: 40),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       RichText(
                    //         text: TextSpan(
                    //             text: '견적내기\n',
                    //             style: TextStyle(
                    //               fontSize: 18,
                    //               color: SIGColors.primColor_bkf,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //             children: <TextSpan>[
                    //               TextSpan(
                    //                 text: '비교 불가! 저렴한 견적을 산출해 보세요',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w300,
                    //                   fontSize: 14,
                    //                   color: SIGColors.primColor_bk40,
                    //                 ),
                    //               )
                    //             ]),
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: 16),
                    //         child: ElevatedButton(
                    //           onPressed: () {
                    //             showDialog(
                    //                 context: context,
                    //                 builder: (context) {
                    //                   return commingSoonAlert();
                    //                 });
                    //           },
                    //           style: SIGButtonStyle.PrimOtlBtn_l,
                    //           child: Row(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Image.asset('assets/icons/Estimateicon.png'),
                    //               Text(
                    //                 '맞춤 견적내기',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w700,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   padding: EdgeInsets.only(top: 40),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       RichText(
                    //         text: TextSpan(
                    //             text: '추천 제품\n',
                    //             style: TextStyle(
                    //               fontSize: 18,
                    //               color: SIGColors.primColor_bkf,
                    //               fontWeight: FontWeight.w700,
                    //             ),
                    //             children: <TextSpan>[
                    //               TextSpan(
                    //                 text: 'SIG에서 준비한 강력 추천상품',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w300,
                    //                   fontSize: 14,
                    //                   color: SIGColors.primColor_bk40,
                    //                 ),
                    //               )
                    //             ]),
                    //       ),
                    //       Padding(
                    //         padding: EdgeInsets.only(top: 16),
                    //         child: ElevatedButton(
                    //           onPressed: () {
                    //             showDialog(
                    //                 context: context,
                    //                 builder: (context) {
                    //                   return commingSoonAlert();
                    //                 });
                    //           },
                    //           style: SIGButtonStyle.PrimOtlBtn_l,
                    //           child: Row(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment: MainAxisAlignment.center,
                    //             children: [
                    //               Image.asset('assets/icons/Estimateicon.png'),
                    //               Text(
                    //                 '견적내기',
                    //                 style: TextStyle(
                    //                   fontWeight: FontWeight.w700,
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
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

class commingSoonAlert extends StatelessWidget {
  const commingSoonAlert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text('준비중 입니다'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              '확인',
              style: TextStyle(color: SIGColors.primColor_bkf),
            ),
          )
        ],
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
  // bool slideOpen = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 160,
          decoration: BoxDecoration(
              color: SIGColors.primColor_bk3
          ),
          padding: EdgeInsets.only(left: 16, top: 26, right: 16, bottom: 32),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Icon(
                      SIGicons.sig_logo,
                      size: 24,
                      color: SIGColors.primColor_bk80,
                    ),
                  ],
                ),
              ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/Homeicon.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child:  Text(
                        '홈',
                        style: TextStyle(
                            color: SIGColors.primColor_bkf
                        ),
                      ) ,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: (){
                  // Navigator.pushNamed(context, '/preview3d');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => screenTest()),
                  );
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/Estimateicon_un.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '견적내기',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ),
                    ),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/Viewicon_un.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '미리보기',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ) ,
                    ) ,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/MyEstiicon_un.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '내 견적',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/mypage');
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/icons/Mypageicon_un.png'),
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        '내 정보',
                        style: TextStyle(
                            color: SIGColors.primColor_bk40
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 32,
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

// bottomNavigationBar: Container(
//   // height: 60,
//   decoration: BoxDecoration(
//     border: Border(top: BorderSide(color: SIGColors.primColor_bk13)),
//   ),
//   child: BottomNavigationBar(
//     onTap: (index) {
//       setState(() {
//         _selectedIndex = index;
//         // pageController.animateTo(offset, duration: duration, curve: curve)
//         if (index == 2) {
//           Navigator.pushNamed(context, '/preview3d');
//         }
//       });
//     },
//     currentIndex: _selectedIndex,
//     items: [
//       BottomNavigationBarItem(
//         icon: Image.asset('assets/icons/Homeicon_un.png'),
//         activeIcon: Image.asset('assets/icons/Homeicon.png'),
//         label: '홈',
//       ),
//       BottomNavigationBarItem(
//         icon: Image.asset('assets/icons/Estimateicon_un.png'),
//         activeIcon: Image.asset('assets/icons/Estimateicon.png'),
//         label: '견적내기',
//       ),
//       BottomNavigationBarItem(
//         icon: Image.asset('assets/icons/Viewicon_un.png'),
//         activeIcon: Image.asset('assets/icons/Viewicon.png'),
//         label: '미리보기',
//       ),
//       BottomNavigationBarItem(
//         icon: Image.asset('assets/icons/MyEstiicon_un.png'),
//         activeIcon: Image.asset('assets/icons/MyEstiicon.png'),
//         label: '내견적',
//       ),
//       BottomNavigationBarItem(
//         icon: Image.asset('assets/icons/Mypageicon_un.png'),
//         activeIcon: Image.asset('assets/icons/Mypageicon.png'),
//         label: '내정보',
//       ),
//     ],
//     type: BottomNavigationBarType.fixed,
//     fixedColor: SIGColors.primColor_bkf,
//     backgroundColor: SIGColors.primColor_wf,
//     elevation: 0,
//     selectedLabelStyle: TextStyle(
//       fontWeight: FontWeight.w700,
//     ),
//     selectedFontSize: 12,
//     unselectedItemColor: SIGColors.primColor_bk40,
//     unselectedLabelStyle: TextStyle(
//       fontWeight: FontWeight.w700,
//     ),
//     unselectedFontSize: 12,
//     showUnselectedLabels: true,
//   ),
// ),