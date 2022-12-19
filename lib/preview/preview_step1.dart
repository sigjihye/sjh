import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sigmodern/component/argument.dart';
import 'package:sigmodern/head.dart';
import 'package:sigmodern/room_notifier.dart';

class PreviewStep1 extends StatefulWidget {
  const PreviewStep1({Key? key}) : super(key: key);

  @override
  State<PreviewStep1> createState() => _PreviewStep1State();
}

class _PreviewStep1State extends State<PreviewStep1> {
  int _position = 0;

  bool topSinkArea = false;
  bool bottomSinkArea = false;

  @override
  Widget build(BuildContext context) {
    Arguments? arguments =
        ModalRoute.of(context)?.settings.arguments as Arguments?;

    return Consumer<RoomNotifier>(
      builder: (_, room, __) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          leadingWidth: 30,
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
                '구성 선택하기',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  color: SIGColors.primColor_bkf,
                ),
              ),
              Text(
                '미리 보고싶은 문짝을 선택하세요',
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
        body: Container(
          padding: EdgeInsets.only(left: 16, top: 32, right: 16, bottom: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  // height: 200, // 임시로 줄여뒀음
                  padding:
                      EdgeInsets.only(left: 40, top: 32, right: 32, bottom: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                    border: Border.all(color: SIGColors.primColor_bk13),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: SizedBox(
                              width: 161,
                              height: 94,
                              child: Image.asset(room.getTopSink() == true
                                  ? 'assets/images/kitchenln_top-on.png'
                                  : 'assets/images/kitchenln_top-off.png'),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 12),
                              decoration: BoxDecoration(
                                color: room.getTopSink() == true
                                    ? SIGColors.primColor_bkf
                                    : Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                border:
                                    Border.all(color: SIGColors.primColor_bk13),
                              ),
                              child: Text(
                                '상부장',
                                style: TextStyle(
                                  color: room.getTopSink() == true
                                      ? SIGColors.primColor_wf
                                      : SIGColors.primColor_bkf,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 28,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 2,
                            child: SizedBox(
                                width: 161,
                                height: 94,
                                child: Image.asset(room.getBottomSink() == true
                                    ? 'assets/images/kitchenln_bt-on.png'
                                    : 'assets/images/kitchenln_bt-off.png')),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 12),
                              decoration: BoxDecoration(
                                color: room.getBottomSink() == true
                                    ? SIGColors.primColor_bkf
                                    : Colors.transparent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                border:
                                    Border.all(color: SIGColors.primColor_bk13),
                              ),
                              child: Text(
                                '하부장',
                                style: TextStyle(
                                  color: room.getBottomSink() == true
                                      ? SIGColors.primColor_wf
                                      : SIGColors.primColor_bkf,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
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
                                '1단계',
                                style: TextStyle(
                                  color: SIGColors.primColor_bk40,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '구성 선택하기',
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
                    Column(
                      children: [
                        SizedBox(
                          height: 48.0,
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () => setState(() {
                              room.setTopSink(!room.getTopSink());
                            }),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              decoration: BoxDecoration(
                                color: room.getTopSink() == true
                                  ? SIGColors.primColor_bk5
                                  : Colors.transparent,
                                border: Border.all(
                                  color: SIGColors.primColor_bk13,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      room.getTopSink() == true
                                          ? Padding(
                                              padding:
                                                  EdgeInsets.only(right: 4),
                                              child: Icon(
                                                  SIGicons.checkcircle_icon,
                                                  color: SIGColors.pcColor_f))
                                          : SizedBox(),
                                      Text(
                                        '상부장',
                                        style: TextStyle(
                                            color: SIGColors.primColor_bkf),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        SizedBox(
                          height: 48.0,
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () =>
                                room.setBottomSink(!room.getBottomSink()),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              decoration: BoxDecoration(
                                color: room.getBottomSink() == true
                                    ? SIGColors.primColor_bk5
                                    : Colors.transparent,
                                border: Border.all(
                                  color: SIGColors.primColor_bk13,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    room.getBottomSink() == true
                                        ? Padding(
                                            padding: EdgeInsets.only(right: 4),
                                            child: Icon(
                                                SIGicons.checkcircle_icon,
                                                color: SIGColors.pcColor_f))
                                        : SizedBox(),
                                    Text(
                                      '하부장',
                                      style: TextStyle(
                                          color: SIGColors.primColor_bkf),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          // width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (arguments?.args1 != 'edit') {
                      if (room.getTopSink() == false &&
                          room.getBottomSink() == false) {
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (context) {
                            return AlertDialog(
                              elevation: 2,
                              title: Text(
                                '구성을 선택하세요',
                                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '상/하부장 중 하나 이상을 선택하세요',
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
                                          child: Text('닫기', style: TextStyle(color: SIGColors.primColor_wf)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        );
                        print('안넘어 가는중');
                      } else {
                        Navigator.pushNamed(context, '/previewstep2');
                      }
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  style: SIGButtonStyle.PrimElevBtn_l,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: SIGColors.primColor_wf,
                      ),
                      text: (arguments?.args1 == 'edit') ? "닫 기" : "다음 단계",
                      children: [
                        if (arguments?.args1 != 'edit')
                          TextSpan(
                            text: '(1/4)',
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
      ),
    );
  }
}
