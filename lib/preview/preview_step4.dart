import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:sigmodern/head.dart';
import 'package:sigmodern/room_notifier.dart';

import '../component/argument.dart';
import '../component/handleInfo.dart';

class PreviewStep4 extends StatefulWidget {
  const PreviewStep4({Key? key}) : super(key: key);

  @override
  State<PreviewStep4> createState() => _PreviewStep4State();
}

class _PreviewStep4State extends State<PreviewStep4>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<HandleInfo> lstHandleInfo = [];

  @override
  void initState() {
    _tabController = TabController(
      length: 3,
      vsync: this,
    );

    lstHandleInfo.add(HandleInfo(1, 1, "9188-25", "지름 25", "황동", "골드",
        "assets/images/handle/1/9188.jpg"));
    lstHandleInfo.add(HandleInfo(2, 1, "9187", "지름 25, 높이 33", "황동", "골드",
        "assets/images/handle/1/9187.jpg"));
    lstHandleInfo.add(HandleInfo(3, 1, "4301", "고리지름 53파이, 링두께 8", "철", "블랙",
        "assets/images/handle/1/430.jpg"));
    lstHandleInfo.add(HandleInfo(4, 1, "6404", "지름 48, 높이 25", "원목", "무도색",
        "assets/images/handle/1/6404.jpg"));
    lstHandleInfo.add(HandleInfo(5, 1, "6505", "지름 30, 높이 25", "원목", "무도색",
        "assets/images/handle/1/6404.jpg"));
    lstHandleInfo.add(HandleInfo(6, 1, "6506", "지름 30, 높이 22", "원목", "무도색",
        "assets/images/handle/1/6506.jpg"));
    lstHandleInfo.add(HandleInfo(7, 1, "1018", "지름 34, 높이 35", "철", "블랙",
        "assets/images/handle/1/1018.jpg"));
    lstHandleInfo.add(HandleInfo(8, 1, "1019", "지름 34, 높이 35", "철", "AP",
        "assets/images/handle/1/1019.jpg"));

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
              '손잡이 선택하기',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: SIGColors.primColor_bkf,
              ),
            ),
            Text(
              '손잡이를 선택하세요',
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
            style: SIGButtonStyle.pcBtn_s,
            child: Text('선택 목록'),
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
        child : SingleChildScrollView(
          child: Consumer<RoomNotifier>(
            builder: (_, room, __) => Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 32, right: 16, bottom: 0),
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      border: Border.all(color: SIGColors.primColor_bk13),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          margin: EdgeInsets.only(right: 24),
                          child: Image.asset(
                              lstHandleInfo[room.handleType].thumbPath),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${lstHandleInfo[room.handleType].type}구 - ${lstHandleInfo[room.handleType].title}",
                                style: TextStyle(
                                  color: SIGColors.primColor_bkf,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 24),
                                child: Text(
                                  lstHandleInfo[room.handleType].subscribe,
                                  style: TextStyle(
                                    color: SIGColors.primColor_bk80,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 32),
                                        child: Text(
                                          '재질',
                                          style: TextStyle(
                                              color: SIGColors.primColor_bk60,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Text(
                                        lstHandleInfo[room.handleType].material,
                                        style: TextStyle(
                                          color: SIGColors.primColor_bk80,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 16),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(right: 32),
                                          child: Text(
                                            '색상',
                                            style: TextStyle(
                                                color: SIGColors.primColor_bk60,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        Text(
                                          lstHandleInfo[room.handleType]
                                              .colorName,
                                          style: TextStyle(
                                            color: SIGColors.primColor_bk80,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )
                                      ],
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
                                  '4단계',
                                  style: TextStyle(
                                    color: SIGColors.primColor_bk40,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '손잡이 선택하기',
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
                          bottom: BorderSide(color: SIGColors.primColor_bk13))),
                  child: TabBar(
                    tabs: [
                      Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '1구',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '2구',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        height: 48,
                        alignment: Alignment.center,
                        child: Text(
                          '기타',
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
                  width: double.maxFinite,
                  height: 426,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        // child: GridView.builder(
                        //     itemCount: lstHandleInfo.length,
                        //     gridDelegate:
                        //         SliverGridDelegateWithFixedCrossAxisCount(
                        //       crossAxisCount: 4,
                        //       childAspectRatio: 0.7,
                        //       mainAxisSpacing: 16,
                        //     ),
                        //     itemBuilder: (BuildContext context, int idx) {
                        //       return Container(
                        //         child: InkWell(
                        //           onTap: () {
                        //             room.handleType = idx;
                        //           },
                        //           child: Container(
                        //             color: (room.handleType == idx)
                        //                 ? Colors.cyan
                        //                 : Colors.transparent,
                        //             child: Column(
                        //               mainAxisAlignment: MainAxisAlignment.start,
                        //               crossAxisAlignment:
                        //                   CrossAxisAlignment.center,
                        //               children: [
                        //                 Container(
                        //                   decoration: BoxDecoration(
                        //                     border: Border.all(
                        //                         color: SIGColors.primColor_bk5),
                        //                   ),
                        //                   child: Image.asset(
                        //                     lstHandleInfo[idx].thumbPath,
                        //                     width: 78,
                        //                     height: 78,
                        //                     fit: BoxFit.cover,
                        //                   ),
                        //                 ),
                        //                 Text(
                        //                   lstHandleInfo[idx].title,
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
                          rowSizes: [120.px, 120.px, 120.px, 120.px],
                          rowGap: 16,
                          children: [
                            for (var idx = 0; idx < lstHandleInfo.length; idx++)
                              SizedBox(
                                child: InkWell(
                                  onTap: () {
                                    room.handleType = idx;
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(8),
                                    color: (room.handleType == idx)
                                        ? SIGColors.primColor_bkf : Colors.transparent,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: SIGColors.primColor_bk5),
                                          ),
                                          child: Image.asset(
                                            lstHandleInfo[idx].thumbPath,
                                            width: 68,
                                            height: 68,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 8),
                                          child: Text(
                                            lstHandleInfo[idx].title,
                                            style: TextStyle(
                                              color: (room.handleType == idx)
                                                  ? SIGColors.primColor_wf : SIGColors.primColor_bkf,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
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
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        child: Center(
                          child: Text('상품이 없습니다.'),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                        child: Center(
                          child: Text('상품이 없습니다.'),
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
            Container(
              margin: EdgeInsets.only(right: 8),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: SIGButtonStyle.PrimOtlBtn_l,
                child: Text('이전'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/selectionList');
                  Navigator.pushNamed(context, '/selectionList',
                      arguments: Arguments('Complate'));
                },
                style: SIGButtonStyle.PrimElevBtn_l,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: SIGColors.primColor_wf,
                    ),
                    text: '선택 완료',
                    children: [
                      TextSpan(
                        text: '(4/4)',
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

class handleList extends StatefulWidget {
  const handleList({Key? key}) : super(key: key);

  @override
  State<handleList> createState() => _handleListState();
}

bool _hdlBtnPressed = false;

class _handleListState extends State<handleList> {
  @override
  Widget build(BuildContext context) {
    return GridView(
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 0.7,
        // childAspectRatio: (itemWidth / itemHeight),
        mainAxisSpacing: 16,
      ),
      children: List.generate(8, (index) {
        //item 의 반목문 항목 형성
        return ElevatedButton(
          onPressed: () => {
            setState(() {
              _hdlBtnPressed = !_hdlBtnPressed;
            })
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(8),
            elevation: 0,
            backgroundColor:
                _hdlBtnPressed ? SIGColors.primColor_bkf : Colors.transparent,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(0),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/frog.jpg'),
              Text(
                '재질 이름 긴거는 이렇게',
                style: TextStyle(
                  color: _hdlBtnPressed
                      ? SIGColors.primColor_wf
                      : SIGColors.primColor_bkf,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
