import 'package:flutter/services.dart';
import 'package:sigmodern/head.dart';
import 'package:sigmodern/component/KitchenInfo.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:sigmodern/room_notifier.dart';
import '../component/colorInfo.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Preview3DViewer extends StatefulWidget {
  const Preview3DViewer({Key? key}) : super(key: key);

  @override
  State<Preview3DViewer> createState() => _Preview3DViewerState();
}

enum SingingCharacter { lafayette, jefferson }

class _Preview3DViewerState extends State<Preview3DViewer>
    with TickerProviderStateMixin {

  List<KitchenInfo> KitchenTypeInfo = [];
  List<ColorInfo> lstColorInfo = [];
  bool DaynNight = false;
  bool ViewSlideBtn = false;
  bool PrdSlideBtn = false;


  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);

    KitchenTypeInfo.add(KitchenInfo(
      1,
      'assets/images/frog.jpg',
      '1자형',
      "'1'자형",
      "주방타입 설명부분 주르륵 길게 들어감",
    ));
    KitchenTypeInfo.add(KitchenInfo(
      2,
      'assets/images/frog.jpg',
      'ㄱ자형',
      "'ㄱ'자형",
      "주방타입 설명부분 주르륵 길게 들어감",
    ));
    KitchenTypeInfo.add(KitchenInfo(
      2,
      'assets/images/frog.jpg',
      'ㄷ자형',
      "'ㄷ'자형",
      "주방타입 설명부분 주르륵 길게 들어감",
    ));
    KitchenTypeInfo.add(KitchenInfo(
      2,
      'assets/images/frog.jpg',
      '아일랜드형',
      "아일랜드형",
      "주방타입 설명부분 주르륵 길게 들어감",
    ));

    lstColorInfo.add(ColorInfo(
        1,
        '매트 스노우 화이트',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-110.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-110.jpg',
        0xffc2b6a7));
    lstColorInfo.add(ColorInfo(
        2,
        '매트 크림 화이트',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-111.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-111.jpg',
        0xffc2b6a7));
    lstColorInfo.add(ColorInfo(
        3,
        '매트 애쉬 브라운',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-121.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-121.jpg',
        0xffc2b6a7));
    lstColorInfo.add(ColorInfo(
        4,
        '매트 옐로우피치',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-126.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-126.jpg',
        0xffc2b6a7));
    lstColorInfo.add(ColorInfo(
        5,
        '매트 오렌지크림',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-123.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-123.jpg',
        0xffc2b6a7));
    lstColorInfo.add(ColorInfo(
        6,
        '매트 모카커피',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-122.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-122.jpg',
        0xffc2b6a7));
    lstColorInfo.add(ColorInfo(
        7,
        '매트 체블로썸',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-128.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-128.jpg',
        0xfffee4e3));
    lstColorInfo.add(ColorInfo(
        8,
        '매트 스카렛핑크',
        'PET',
        'assets/images/colorchips2/PET/chip/matte/SPMN-130.png',
        'assets/images/colorchips2/PET/thumb/matte/SPMN-130.jpg',
        0xffebb4af));

    super.initState();
    ViewSlideBtn = ViewSlideBtn;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    super.dispose();
  }

  SingingCharacter? _character = SingingCharacter.lafayette;

  bool topSinkArea = false;
  bool bottomSinkArea = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            WebView(
              initialUrl: 'http://54.180.124.109:3000/set',
              javascriptMode: JavascriptMode.unrestricted,
            ),
            Container(
              width: 40.0,
              height: 40.0,
              child: IconButton(
                color: Colors.white,
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            Positioned(
              top: 16,
              left: 8,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(
                      SIGicons.arrowleft_icon,
                      color: SIGColors.primColor_bkf,
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(32, 32),
                      shape: const CircleBorder(),
                      elevation: 0,
                      backgroundColor: SIGColors.primColor_bk5,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 80,
              left: 24,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SIGColors.primColor_w7,
                      elevation: 0,
                      side: BorderSide(color: SIGColors.primColor_bk13),
                    ),
                    child: Text(
                      'view1',
                      style: TextStyle(
                        color: SIGColors.primColor_bk80,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SIGColors.primColor_w7,
                      elevation: 0,
                      side: BorderSide(color: SIGColors.primColor_bk13),
                    ),
                    child: Text(
                      'view2',
                      style: TextStyle(
                        color: SIGColors.primColor_bk80,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: SIGColors.primColor_w7,
                      elevation: 0,
                      side: BorderSide(color: SIGColors.primColor_bk13),
                    ),
                    child: Text(
                      'view3',
                      style: TextStyle(
                        color: SIGColors.primColor_bk80,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 16,
              left: 8,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        DaynNight = !DaynNight;
                      });
                    },
                    child: Icon(
                      DaynNight == false
                          ? SIGicons.day_icon
                          : SIGicons.night_icon,
                      color: SIGColors.primColor_wf,
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(32, 32),
                      shape: const CircleBorder(),
                      elevation: 0,
                      backgroundColor: DaynNight == false
                          ? SIGColors.pcColor_f
                          : SIGColors.primColor_bkf,
                    ),
                  ),
                ],
              ),
            ),
            AnimatedPositioned(
              top: 0,
              right: ViewSlideBtn ? 48 : -400,
              duration: const Duration(milliseconds: 300),
              child: ViewTab(viewClose : ViewSlideBtn),
            ),
            AnimatedPositioned(
              top: 0,
              right: PrdSlideBtn ? 48 : -400,
              duration: const Duration(milliseconds: 300),
              child: PrdTab(),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 48,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    border: Border(
                        left: BorderSide(color: SIGColors.primColor_bk13)),
                    color: SIGColors.primColor_wf),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          ViewSlideBtn = !ViewSlideBtn;

                          if(ViewSlideBtn == true) {
                            PrdSlideBtn = false;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: EdgeInsets.all(0),
                        fixedSize: Size(42, 42),
                        backgroundColor: Colors.transparent,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            SIGicons.view_icon,
                            color: ViewSlideBtn ? SIGColors.primColor_bkf : SIGColors.primColor_bk40,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Text(
                              '보기',
                              style: TextStyle(
                                color: ViewSlideBtn ? SIGColors.primColor_bkf : SIGColors.primColor_bk40,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            PrdSlideBtn = !PrdSlideBtn;

                            if(PrdSlideBtn == true) {
                              ViewSlideBtn = false;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.all(0),
                          fixedSize: Size(42, 42),
                          backgroundColor: Colors.transparent,
                        ),
                        child: Column(
                          children: [
                            Icon(
                              SIGicons.selectprd_icon,
                              color: PrdSlideBtn ? SIGColors.primColor_bkf : SIGColors.primColor_bk40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                '제품',
                                style: TextStyle(
                                  color: PrdSlideBtn ? SIGColors.primColor_bkf : SIGColors.primColor_bk40,
                                  fontSize: 12,
                                ),
                              ),
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
      ),
    );
  }
}

class ViewTab extends StatefulWidget {
  ViewTab({Key? key, required this.viewClose}) : super(key: key);

  bool viewClose;

  @override
  State<ViewTab> createState() => _ViewTabState();

}

class _ViewTabState extends State<ViewTab> with TickerProviderStateMixin {
  late TabController _ViewTabController;


  @override
  void initState() {
    _ViewTabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8, right: 8, left: 8),
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.viewClose = !widget.viewClose;

                  print(widget.viewClose);
                  if(widget.viewClose == true){
                    // ViewSlideBtn = true;
                  }

                });
              },
              icon: Icon(SIGicons.clear_icon),
            ),
          ),
          Container(
            width: 280,
            height: MediaQuery.of(context).size.height,
            color: SIGColors.primColor_bk5,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: SIGColors.primColor_bk13)),
                    color: SIGColors.primColor_wf,
                  ),
                  child: TabBar(
                    tabs: [
                      Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '주방타입',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '테마',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                    indicatorColor: SIGColors.primColor_bkf,
                    labelColor: SIGColors.primColor_bkf,
                    unselectedLabelColor: SIGColors.primColor_bk40,
                    controller: _ViewTabController,
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _ViewTabController,
                    children: [
                      Container(
                        color: SIGColors.primColor_wf,
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: SIGColors.primColor_bk5,
                              )),
                            ),
                            child: Column(
                              children: [
                                // for(var i = 0; i < KitchenTypeInfo.length; i++)
                                InkWell(
                                  onTap: (){
                                    print('타입 버튼');
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                          'assets/images/frog.jpg',
                                          width: 72,
                                          height: 72,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '주방타입',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: SIGColors.primColor_bk60,
                                                    fontWeight: FontWeight.w600
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: 4, bottom: 4),
                                                child: Text(
                                                  '작은 공간에 알맞은 주방. 오픈되어 있어 효과적인 접근성',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '적용하기',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: SIGColors.pcColor_f,
                                                  decoration: TextDecoration.underline,
                                                  fontWeight: FontWeight.w600,
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
                          ),
                        ),
                      ),
                      Container(
                        color: SIGColors.primColor_wf,
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.symmetric(vertical: 32),
                        child: Text(
                          'COMINGSOON',
                          style: TextStyle(
                            fontSize: 30,
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
      );
  }
}

class PrdTab extends StatefulWidget {
  const PrdTab({Key? key}) : super(key: key);

  @override
  State<PrdTab> createState() => _PrdTabState();
}

class _PrdTabState extends State<PrdTab> with TickerProviderStateMixin {
  late TabController _PrdTabController;
  late TabController _DoorTypeController;

  @override
  void initState() {
    // TODO: implement initState
    _PrdTabController = TabController(
      length: 3,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );

    _DoorTypeController = TabController(
      length: 2,
      vsync: this,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8, right: 8, left: 8),
          child: IconButton(
            onPressed: () {},
            icon: Icon(SIGicons.clear_icon),
          ),
        ),
        Container(
          width: 280,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: SIGColors.primColor_bk13)),
            color: SIGColors.primColor_wf,
          ),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: SIGColors.primColor_bk13)),
                  color: SIGColors.primColor_wf,
                ),
                child: TabBar(
                  tabs: [
                    Container(
                      height: 48,
                      alignment: Alignment.center,
                      child: Text(
                        '주방타입',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      alignment: Alignment.center,
                      child: Text(
                        '유형/색상',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      height: 48,
                      alignment: Alignment.center,
                      child: Text(
                        '손잡이',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                  indicatorColor: SIGColors.primColor_bkf,
                  labelColor: SIGColors.primColor_bkf,
                  unselectedLabelColor: SIGColors.primColor_bk40,
                  controller: _PrdTabController,
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _PrdTabController,
                  children: [
                    Container(
                      color: SIGColors.primColor_wf,
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  // room.setTopSink(!room.getTopSink());
                                });
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // room.getTopSink() == true
                                  //     ? Padding(
                                  //     padding:
                                  //     EdgeInsets.only(right: 4),
                                  //     child: Icon(
                                  //         SIGicons.checkcircle_icon,
                                  //         color: SIGColors.pcColor_f))
                                  //     : SizedBox(),
                                  Text(
                                    '상부장',
                                    style: TextStyle(
                                      color: SIGColors.primColor_bkf,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                // backgroundColor: room.getTopSink() == true
                                //   ? SIGColors.primColor_bk5, : Colors.transparent,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                side: BorderSide(
                                    color: SIGColors.primColor_bk13
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // room.getBottomSink() == true
                                  //     ? Padding(
                                  //     padding:
                                  //     EdgeInsets.only(right: 4),
                                  //     child: Icon(
                                  //         SIGicons.checkcircle_icon,
                                  //         color: SIGColors.pcColor_f))
                                  //     : SizedBox(),
                                  Text(
                                    '하부장',
                                    style: TextStyle(
                                      color: SIGColors.primColor_bkf,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                // backgroundColor: room.getBottomSink() == true
                                //     ? SIGColors.primColor_bk5, : Colors.transparent,
                                backgroundColor: Colors.transparent,
                                elevation: 0,
                                side: BorderSide(
                                  color: SIGColors.primColor_bk13,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: SIGColors.primColor_wf,
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            // width: 200,
                            child: TabBar(
                              controller: _DoorTypeController,
                              padding: EdgeInsets.all(0),
                              indicatorColor: Colors.transparent,
                              indicator: BubbleTabIndicator(
                                indicatorHeight: 33,
                                indicatorColor: SIGColors.primColor_bkf,
                                tabBarIndicatorSize: TabBarIndicatorSize.tab,
                                insets: EdgeInsets.all(0),
                              ),
                              unselectedLabelColor: SIGColors.primColor_bk40,
                              tabs: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: Text(
                                    '상부장',
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                                  child: Text(
                                    '하부장',
                                    style: TextStyle(
                                        fontSize: 14
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _DoorTypeController,
                              children: [
                                SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                                          child: Text(
                                            'PET',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        LayoutGrid(
                                          columnSizes: [1.fr, 1.fr, 1.fr],
                                          rowSizes: [106.px, 106.px, 106.px],
                                          rowGap: 16,
                                          children: [
                                            // for (var idx = 0; idx < KitchenTypeInfo.length; idx++)
                                            SizedBox(
                                              child: InkWell(
                                                onTap: () {
                                                  // room.topSinkIndex = idx;
                                                },
                                                child: Container(
                                                  // padding: EdgeInsets.all(8),
                                                  // color: (room.topSinkIndex == idx)
                                                  //     ? SIGColors.primColor_bkf
                                                  //     : Colors.transparent,
                                                  // color: SIGColors.primColor_bkf,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          border: Border.all(
                                                            // color: (room.topSinkIndex == idx)
                                                            // ? SIGColors.primColor_bkf : Colors.transparent,
                                                            color: SIGColors.primColor_bkf,
                                                            // width: (room.topSinkIndex == idx)
                                                            //     ? 5 : 0,
                                                            width: 5,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment.center,
                                                          children: [
                                                            Image.asset(
                                                              // lstColorInfo[idx].colorImg,
                                                              'assets/images/frog.jpg',
                                                              width: 68,
                                                              height: 68,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            // (room.topSinkIndex == idx) ? Positioned(
                                                            //   // top: MediaQuery.of(context).size.width,
                                                            //   child: Icon(
                                                            //     SIGicons.checkcircle_icon,
                                                            //     color: SIGColors.pcColor_f,
                                                            //     size: 24,
                                                            //   ),
                                                            // ), : SizedBox(),
                                                            Positioned(
                                                              // top: MediaQuery.of(context).size.width,
                                                              child: Icon(
                                                                SIGicons.checkcircle_icon,
                                                                color: SIGColors.pcColor_f,
                                                                size: 24,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(top: 8),
                                                        child: Text(
                                                          // lstColorInfo[idx].title,
                                                          '타이틀',
                                                          style: TextStyle(
                                                              color: SIGColors.primColor_bkf,
                                                              fontSize: 14,
                                                              // fontWeight: (room.topSinkIndex == idx)
                                                              //     ? FontWeight.w600 : FontWeight.w300,
                                                              fontWeight: FontWeight.w300
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Container(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                                          child: Text(
                                            'PET',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        LayoutGrid(
                                          columnSizes: [1.fr, 1.fr, 1.fr],
                                          rowSizes: [106.px, 106.px, 106.px],
                                          rowGap: 16,
                                          children: [
                                            // for (var idx = 0; idx < KitchenTypeInfo.length; idx++)
                                            SizedBox(
                                              child: InkWell(
                                                onTap: () {
                                                  // room.topSinkIndex = idx;
                                                },
                                                child: Container(
                                                  // padding: EdgeInsets.all(8),
                                                  // color: (room.topSinkIndex == idx)
                                                  //     ? SIGColors.primColor_bkf
                                                  //     : Colors.transparent,
                                                  // color: SIGColors.primColor_bkf,
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        decoration: BoxDecoration(
                                                          border: Border.all(
                                                            // color: (room.topSinkIndex == idx)
                                                            // ? SIGColors.primColor_bkf : Colors.transparent,
                                                            color: SIGColors.primColor_bkf,
                                                            // width: (room.topSinkIndex == idx)
                                                            //     ? 5 : 0,
                                                            width: 5,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment.center,
                                                          children: [
                                                            Image.asset(
                                                              // lstColorInfo[idx].colorImg,
                                                              'assets/images/frog.jpg',
                                                              width: 68,
                                                              height: 68,
                                                              fit: BoxFit.cover,
                                                            ),
                                                            // (room.topSinkIndex == idx) ? Positioned(
                                                            //   // top: MediaQuery.of(context).size.width,
                                                            //   child: Icon(
                                                            //     SIGicons.checkcircle_icon,
                                                            //     color: SIGColors.pcColor_f,
                                                            //     size: 24,
                                                            //   ),
                                                            // ), : SizedBox(),
                                                            Positioned(
                                                              // top: MediaQuery.of(context).size.width,
                                                              child: Icon(
                                                                SIGicons.checkcircle_icon,
                                                                color: SIGColors.pcColor_f,
                                                                size: 24,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(top: 8),
                                                        child: Text(
                                                          // lstColorInfo[idx].title,
                                                          '타이틀',
                                                          style: TextStyle(
                                                              color: SIGColors.primColor_bkf,
                                                              fontSize: 14,
                                                              // fontWeight: (room.topSinkIndex == idx)
                                                              //     ? FontWeight.w600 : FontWeight.w300,
                                                              fontWeight: FontWeight.w300
                                                          ),
                                                          textAlign: TextAlign.left,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
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
                    ),
                    Container(
                      color: SIGColors.primColor_wf,
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: SingleChildScrollView(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                                child: Text(
                                  '1구',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              LayoutGrid(
                                columnSizes: [1.fr, 1.fr, 1.fr],
                                rowSizes: [106.px, 106.px, 106.px],
                                rowGap: 16,
                                children: [
                                  // for (var idx = 0; idx < KitchenTypeInfo.length; idx++)
                                  SizedBox(
                                    child: InkWell(
                                      onTap: () {
                                        // room.topSinkIndex = idx;
                                      },
                                      child: Container(
                                        // padding: EdgeInsets.all(8),
                                        // color: (room.topSinkIndex == idx)
                                        //     ? SIGColors.primColor_bkf
                                        //     : Colors.transparent,
                                        // color: SIGColors.primColor_bkf,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  // color: (room.topSinkIndex == idx)
                                                  // ? SIGColors.primColor_bkf : Colors.transparent,
                                                  color: SIGColors.primColor_bkf,
                                                  // width: (room.topSinkIndex == idx)
                                                  //     ? 5 : 0,
                                                  width: 5,
                                                ),
                                              ),
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Image.asset(
                                                    // lstColorInfo[idx].colorImg,
                                                    'assets/images/frog.jpg',
                                                    width: 68,
                                                    height: 68,
                                                    fit: BoxFit.cover,
                                                  ),
                                                  // (room.topSinkIndex == idx) ? Positioned(
                                                  //   // top: MediaQuery.of(context).size.width,
                                                  //   child: Icon(
                                                  //     SIGicons.checkcircle_icon,
                                                  //     color: SIGColors.pcColor_f,
                                                  //     size: 24,
                                                  //   ),
                                                  // ), : SizedBox(),
                                                  Positioned(
                                                    // top: MediaQuery.of(context).size.width,
                                                    child: Icon(
                                                      SIGicons.checkcircle_icon,
                                                      color: SIGColors.pcColor_f,
                                                      size: 24,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(top: 8),
                                              child: Text(
                                                // lstColorInfo[idx].title,
                                                '타이틀',
                                                style: TextStyle(
                                                    color: SIGColors.primColor_bkf,
                                                    fontSize: 14,
                                                    // fontWeight: (room.topSinkIndex == idx)
                                                    //     ? FontWeight.w600 : FontWeight.w300,
                                                    fontWeight: FontWeight.w300
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
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
            ],
          ),
        ),
      ],
    );
  }
}
