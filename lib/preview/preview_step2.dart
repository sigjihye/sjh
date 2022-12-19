import 'package:provider/provider.dart';
import 'package:sigmodern/head.dart';
import 'package:sigmodern/room_notifier.dart';

import '../component/argument.dart';

class PreviewStep2 extends StatefulWidget {
  const PreviewStep2({Key? key}) : super(key: key);

  @override
  State<PreviewStep2> createState() => _PreviewStep2State();
}

class _PreviewStep2State extends State<PreviewStep2>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final List<Map> _doorType = [
    {"code": 0, "name": "PET"},
    {"code": 1, "name": "지문방지 PET"},
    {"code": 2, "name": "PP"},
    {"code": 3, "name": "우레탄"},
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  Widget _bottomWidget(String? type) {
    if (type == 'edit') {
      return Container(
        margin: EdgeInsets.only(right: 8),
        child: OutlinedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          style: SIGButtonStyle.PrimElevBtn_l,
          child: Text('닫 기'),
        ),
      );
    } else {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(right: 8),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: SIGButtonStyle.PrimOtlBtn_l,
                child: Text('이전'),
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
                        child: PreviewStep3()));
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
                      text: '(2/4)',
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
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Arguments? arguments =
        ModalRoute.of(context)?.settings.arguments as Arguments?;

    return Scaffold(
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
              '제품 유형 선택하기',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: SIGColors.primColor_bkf,
              ),
            ),
            Text(
              '문짝의 유형을 선택하세요',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: SIGColors.primColor_bk80,
              ),
            ),
          ],
        ),
        actions: [
          if (arguments?.args1 != "edit")
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
      body: Consumer<RoomNotifier>(
        builder: (_, room, __) =>Container(
          padding: EdgeInsets.only(left: 0, top: 32, right: 0, bottom: 0),
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 24),
              margin: EdgeInsets.only(left: 16, bottom: 32, right: 16),
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
                        '2단계',
                        style: TextStyle(
                          color: SIGColors.primColor_bk40,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        '제품 유형 선택하기',
                        style: TextStyle(
                          color: SIGColors.primColor_bkf,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () => _moreMaterialBtn(context),
                    child: Row(
                      children: [
                        Text(
                          '더 알아보기',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: SIGColors.primColor_bkf,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Icon(SIGicons.help_icon,
                            size: 20, color: SIGColors.primColor_bkf),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: SIGColors.primColor_bk13),),
              ),
              child: TabBar(
                tabs: [
                  if (room.getTopSink() == true) Container(
                    child: Container(
                      width: double.infinity,
                      height: 48,
                      alignment: Alignment.center,
                      child: Text(
                        '상부장',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  if (room.getBottomSink() == true) Container(
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      child: Text(
                        '하부장',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
                indicatorColor: SIGColors.primColor_bkf,
                labelColor: SIGColors.primColor_bkf,
                unselectedLabelColor: SIGColors.primColor_bk40,
                controller: _tabController,
              ),
            ),
            Expanded(
              child: Consumer<RoomNotifier>(
                builder: (context, room, __) => TabBarView(
                  controller: _tabController,
                  children: [
                    if (room.getTopSink() == true) Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: _doorType
                                  .map((door) => RadioListTile(
                                        activeColor: SIGColors.pcColor_f,
                                        title: Text(
                                          door['name'],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        value: door['code'],
                                        groupValue: room.topSinkType,
                                        onChanged: (value) {
                                          room.topSinkType = value!;
                                          // setState(() {
                                          //   // _highdoor = value;
                                          //   _chkType = door['code'];
                                          // });
                                        },
                                        shape: Border(
                                            bottom: BorderSide(
                                                color: SIGColors.primColor_bk5)),
                                      ))
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ) else SizedBox(width: 0,),
                    if (room.getBottomSink() == true) Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              children: _doorType
                                  .map((door) => RadioListTile(
                                        activeColor: SIGColors.pcColor_f,
                                        title: Text(
                                          door['name'],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        value: door['code'],
                                        groupValue: room.bottomSinkType,
                                        onChanged: (value) {
                                          room.bottomSinkType = value!;
                                          // setState(() {
                                          //   // _highdoor = value;
                                          //   _chkType = door['code'];
                                          // });
                                        },
                                        shape: Border(
                                            bottom: BorderSide(
                                                color: SIGColors.primColor_bk5)),
                                      ))
                                  .toList(),
                            ),
                          )
                        ],
                      ),
                    ) else SizedBox(width: 0,),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        // width: double.infinity,
        child: _bottomWidget(arguments?.args1),
      ),
    );
  }
}

void _moreMaterialBtn(BuildContext context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(24),
          height: MediaQuery.of(context).size.height * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                // height: MediaQuery.of(context).size.height * 0.05,
                child: Text(
                  '제품 유형엔 어떤 것이 있나요?',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Flexible(
                  child: Container(
                    height: (MediaQuery.of(context).size.height * 0.8) - 150,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(24),
                            color: SIGColors.primColor_bk3,
                            margin: EdgeInsets.only(top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PP',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Text(
                                    '봄이 무성할 가슴속에 언덕 거외다. 아직 언덕 둘 까닭입니다. 풀이 별 하나에 동경과 이웃 아스라히 마리아 봅니다. 무성할 위에 어머니, 헤는 소학교 하나 까닭입니다. 벌레는 옥 하나에 하나에 마디씩 시인의 잠, 있인의 잠, 있습니다. 별에도 나는 마디씩 패, 했던 내린 때 별 봅니다.',
                                    style: TextStyle(
                                        color: SIGColors.primColor_bkf,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(24),
                            color: SIGColors.primColor_bk3,
                            margin: EdgeInsets.only(top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '지문방지 PET',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Text(
                                    '재질설명영역',
                                    style: TextStyle(
                                        color: SIGColors.primColor_bkf,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(24),
                            color: SIGColors.primColor_bk3,
                            margin: EdgeInsets.only(top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PET',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Text(
                                    '재질설명영역',
                                    style: TextStyle(
                                        color: SIGColors.primColor_bkf,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(24),
                            color: SIGColors.primColor_bk3,
                            margin: EdgeInsets.only(top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '우레탄',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 16),
                                  child: Text(
                                    '재질설명영역',
                                    style: TextStyle(
                                        color: SIGColors.primColor_bkf,
                                        fontSize: 14),
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
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 8),
                        child: Icon(
                          SIGicons.clear_icon,
                          size: 18,
                        ),
                      ),
                      Text('닫기'),
                    ],
                  ),
                  style: SIGButtonStyle.PrimOtlBtn_l,
                ),
              ),
            ],
          ),
        );
      });
}
