import 'dart:developer';

import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:sigmodern/head.dart';
import 'package:sigmodern/room_notifier.dart';

import '../component/colorInfo.dart';
import '../room_notifier.dart';

class PreviewStep3 extends StatefulWidget {
  const PreviewStep3({Key? key}) : super(key: key);

  @override
  State<PreviewStep3> createState() => _PreviewStep3State();
}

class _PreviewStep3State extends State<PreviewStep3>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<ColorInfo> lstColorInfo = [];
  int topSinkColorIdx = 0;
  int bottomSinkColorIdx = 0;
  bool topSinkColorBtn = false;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );

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
  }

  bool isFabvisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Visibility(
        visible: isFabvisible,
        child: FloatingActionButton(
          onPressed: () {
            var controller = PrimaryScrollController.of(context);
            controller?.jumpTo(0);
          },
          backgroundColor: SIGColors.primColor_bkf,
          child: Icon(SIGicons.doublearrowup_icon),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 80,
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(SIGicons.arrowleft_icon),
          iconSize: 24,
          color: SIGColors.primColor_bkf,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '색상 선택하기',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: SIGColors.primColor_bkf,
              ),
            ),
            Text(
              '문짝의 색상을 선택하세요',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: SIGColors.primColor_bk80,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/selectionList');
            },
            child: Text('선택 목록'),
            style: SIGButtonStyle.pcBtn_s,
          ),
        ],
        shape: Border(
          bottom: BorderSide(
            color: SIGColors.primColor_bkf,
            width: 1,
          ),
        ),
        backgroundColor: SIGColors.primColor_wf,
        elevation: 0,
      ),
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.forward) {
            setState(() => isFabvisible = false);
          } else if (notification.direction == ScrollDirection.reverse) {
            setState(() => isFabvisible = true);
          }
          return true;
        },
        child: SingleChildScrollView(
          child: Consumer<RoomNotifier>(
            builder: (_, room, __) => Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, top: 32, right: 16, bottom: 0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: SIGColors.primColor_bk13),
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (room.getTopSink() == true) Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 24),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    lstColorInfo[room.topSinkIndex].thumbImg,
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Column(
                                    children: [
                                      Text(
                                        '상부장',
                                        style: TextStyle(
                                          color: SIGColors.primColor_bk40,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        lstColorInfo[room.topSinkIndex].title,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        if (room.getBottomSink() == true) Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                vertical: 16, horizontal: 24),
                            decoration: BoxDecoration(
                                border: Border(
                              left: BorderSide(
                                color: SIGColors.primColor_bk13,
                                width: 1,
                              ),
                            )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    lstColorInfo[room.bottomSinkIndex].thumbImg,
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover),
                                Container(
                                  margin: EdgeInsets.only(top: 8),
                                  child: Column(
                                    children: [
                                      Text(
                                        '하부장',
                                        style: TextStyle(
                                          color: SIGColors.primColor_bk40,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        lstColorInfo[room.bottomSinkIndex]
                                            .title,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
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
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 70,
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        margin: EdgeInsets.symmetric(vertical: 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: SIGColors.primColor_bk3,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3단계',
                                  style: TextStyle(
                                    color: SIGColors.primColor_bk40,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '색상 선택하기',
                                  style: TextStyle(
                                    color: SIGColors.primColor_bkf,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
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
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: SIGColors.primColor_bk13)),
                  ),
                  child: TabBar(
                    tabs: [
                      if (room.getTopSink() == true) Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '상부장[${room.topSinkType}]',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      if (room.getBottomSink() == true) Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '하부장[${room.bottomSinkType}]',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                    indicatorColor: SIGColors.primColor_bkf,
                    labelColor: SIGColors.primColor_bkf,
                    unselectedLabelColor: SIGColors.primColor_bk40,
                    controller: _tabController,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.54,
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        child: LayoutGrid(
                          columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
                          rowSizes: [125.px, 125.px, 125.px, 125.px],
                          rowGap: 16,
                          children: [
                            for (var idx = 0; idx < lstColorInfo.length; idx++)
                              SizedBox(
                                child: InkWell(
                                  onTap: () {
                                    room.topSinkIndex = idx;
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    color: (room.topSinkIndex == idx)
                                        ? SIGColors.primColor_bkf
                                        : Colors.transparent,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: SIGColors.primColor_bk5),
                                          ),
                                          child: Image.asset(
                                            lstColorInfo[idx].colorImg,
                                            width: 68,
                                            height: 68,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Text(
                                            lstColorInfo[idx].title,
                                            style: TextStyle(
                                                color: (room.topSinkIndex == idx)
                                                    ? SIGColors.primColor_wf
                                                    : SIGColors.primColor_bkf,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600
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
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                        // child: GridView.builder(
                        //     itemCount: lstColorInfo.length,
                        //     gridDelegate:
                        //         SliverGridDelegateWithFixedCrossAxisCount(
                        //       crossAxisCount: 4,
                        //       childAspectRatio: 0.7,
                        //       mainAxisSpacing: 16,
                        //     ),
                        //     itemBuilder: (BuildContext context, int idx) {
                        //       return Container(
                        //         // padding: EdgeInsets.all(8),
                        //         child: InkWell(
                        //           onTap: () {
                        //             room.bottomSinkIndex = idx;
                        //           },
                        //           child: Container(
                        //             color: (room.bottomSinkIndex == idx)
                        //                 ? Colors.cyan
                        //                 : Colors.transparent,
                        //             child: Column(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.center,
                        //               children: [
                        //                 Container(
                        //                   decoration: BoxDecoration(
                        //                     border: Border.all(
                        //                         color: SIGColors.primColor_bk5),
                        //                   ),
                        //                   child: Image.asset(
                        //                     lstColorInfo[idx].colorImg,
                        //                     width: 78,
                        //                     height: 78,
                        //                     fit: BoxFit.cover,
                        //                   ),
                        //                 ),
                        //                 Text(
                        //                   lstColorInfo[idx].title,
                        //                   textAlign: TextAlign.center,
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     }),
                        child: LayoutGrid(
                          columnSizes: [1.fr, 1.fr, 1.fr, 1.fr],
                          rowSizes: [125.px, 125.px, 125.px, 125.px],
                          rowGap: 16,
                          children: [
                            for (var idx = 0; idx < lstColorInfo.length; idx++)
                              SizedBox(
                                child: InkWell(
                                  onTap: () {
                                    room.bottomSinkIndex = idx;
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    color: (room.bottomSinkIndex == idx)
                                        ? SIGColors.primColor_bkf
                                        : Colors.transparent,
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: SIGColors.primColor_bk5),
                                          ),
                                          child: Image.asset(
                                            lstColorInfo[idx].colorImg,
                                            width: 68,
                                            height: 68,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Text(
                                            lstColorInfo[idx].title,
                                            style: TextStyle(
                                              color: (room.bottomSinkIndex == idx)
                                                  ? SIGColors.primColor_wf
                                                  : SIGColors.primColor_bkf,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        // width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                // width: double.infinity,
                margin: EdgeInsets.only(right: 8),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('이전'),
                  style: SIGButtonStyle.PrimOtlBtn_l,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: PreviewStep4()));
                },
                style: SIGButtonStyle.PrimElevBtn_l,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: SIGColors.primColor_wf,
                    ),
                    text: '다음 단계',
                    children: [
                      TextSpan(
                        text: '(3/4)',
                        style: TextStyle(
                          color: SIGColors.primColor_w7,
                        ),
                      )
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
