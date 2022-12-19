import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sigmodern/component/argument.dart';
import 'package:sigmodern/head.dart';
import 'package:sigmodern/room_notifier.dart';

class SelectionList extends StatefulWidget {
  const SelectionList({Key? key}) : super(key: key);

  @override
  State<SelectionList> createState() => _SelectionListState();
}

class _SelectionListState extends State<SelectionList> {
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    print('Re Renderer');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Arguments? arguments =
        ModalRoute.of(context)?.settings.arguments as Arguments?;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        shape: Border(bottom: BorderSide(color: SIGColors.primColor_bkf)),
        backgroundColor: SIGColors.primColor_wf,
        automaticallyImplyLeading: false,
        title: Text(
          '선택한 항목',
          style: TextStyle(
            color: SIGColors.primColor_bkf,
            fontWeight: FontWeight.w700,
            fontSize: 22
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(SIGicons.clear_icon, size: 24, color: SIGColors.primColor_bkf,),
          ),
        ],
      ),
      body: SafeArea(
        child: Consumer<RoomNotifier>(
          builder: (_, room, __) => SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: BorderDirectional(
                          bottom: BorderSide(color: SIGColors.primColor_bk5)),
                    ),
                    padding: EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '1) 구성',
                              style: TextStyle(
                                  color: SIGColors.primColor_bk60),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              child: Row(
                                children: [
                                  if (room.getTopSink() == true) Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: SIGColors.primColor_bk13),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Text(
                                      '상부장',
                                      style: TextStyle(color: SIGColors.primColor_bkf),
                                    ),
                                  ),
                                  if (room.getBottomSink() == true) Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 12),
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(color: SIGColors.primColor_bk13),
                                      borderRadius: BorderRadius.all(Radius.circular(4)),
                                    ),
                                    child: Text(
                                      '하부장',
                                      style: TextStyle(color: SIGColors.primColor_bkf),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/previewstep1',
                                arguments: Arguments('edit'));
                            // Navigator.of(context).pop();
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => PreviewStep1(),
                            //     ));
                          },
                          child: Text(
                            '수정',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: SIGColors.pcColor_f),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Colors.teal,
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: SIGColors.primColor_bk5))),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2) 유형',
                            style: TextStyle(
                                color: SIGColors.primColor_bk60),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (room.getTopSink() == true) Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text('상부장'),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 12),
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: SIGColors
                                                .primColor_bk13),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                      ),
                                      // child: Text('기본값'),
                                      child: Text('${room.topSinkType}'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                if (room.getBottomSink() == true) Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text('하부장'),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 12),
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: SIGColors
                                                .primColor_bk13),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                      ),
                                      // child: Text('기본값'),
                                      child: Text('${room.bottomSinkType}'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/previewstep2',
                              arguments: Arguments('edit'));
                        },
                        child: Text(
                          '수정',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: SIGColors.pcColor_f),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Colors.teal,
                      border: BorderDirectional(
                          bottom: BorderSide(
                              color: SIGColors.primColor_bk5))),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '3) 색상',
                            style: TextStyle(
                                color: SIGColors.primColor_bk60),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (room.getTopSink() == true) Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text('상부장'),
                                    ),
                                    Container(
                                      width: 32,
                                      height: 32,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(
                                              Radius.circular(4)),
                                          border: Border.all(
                                            color: SIGColors
                                                .primColor_bk13,
                                          )),
                                      child: Image.asset('assets/images/frog.jpg'),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 12),
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: SIGColors
                                                .primColor_bk13),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                      ),
                                      child: Row(
                                        children: [
                                          Text('재질 기본값'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 16),
                                if (room.getBottomSink() == true) Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text('하부장'),
                                    ),
                                    Container(
                                      width: 32,
                                      height: 32,
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.all(
                                              Radius.circular(4)),
                                          border: Border.all(
                                            color: SIGColors
                                                .primColor_bk13,
                                          )),
                                      child: Image.asset('assets/images/frog.jpg'),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 12),
                                      margin: EdgeInsets.only(right: 8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: SIGColors
                                                .primColor_bk13),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)),
                                      ),
                                      child: Row(
                                        children: [
                                          Text('재질 기본값'),
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
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PreviewStep3(),
                              ));
                        },
                        child: Text(
                          '수정',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: SIGColors.pcColor_f),
                        ),
                        // style: SIGButtonStyle.pcBtn_s,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                        bottom:
                        BorderSide(color: SIGColors.primColor_bk5)),
                  ),
                  padding: EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '4) 손잡이',
                            style: TextStyle(
                                color: SIGColors.primColor_bk60),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 12),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: SIGColors
                                                  .primColor_bk13),
                                          borderRadius:
                                          BorderRadius.all(
                                              Radius.circular(4)),
                                        ),
                                        margin:
                                        EdgeInsets.only(right: 8),
                                        child: Image.asset('assets/images/notSelect.png')),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '전구 타입',
                                          style: TextStyle(
                                              color: SIGColors
                                                  .primColor_bk40,
                                              fontWeight:
                                              FontWeight.w700,
                                              fontSize: 13),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 8,
                                              horizontal: 12),
                                          margin: EdgeInsets.only(
                                              right: 8, top: 8),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: SIGColors
                                                    .primColor_bk13),
                                            borderRadius:
                                            BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          child: Row(
                                            children: [
                                              Text('재질타입'),
                                            ],
                                          ),
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
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PreviewStep4(),
                              ));
                        },
                        child: Text(
                          '수정',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: SIGColors.pcColor_f),
                        ),
                        // style: SIGButtonStyle.pcBtn_s,
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
        padding: EdgeInsets.all(16),
        // height: 40.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            if (arguments?.args1 == "Complate") {
              Navigator.pushNamed(context, '/preview3d');
            } else {
              Navigator.pop(context);
            }
          },
          style: (arguments?.args1 == "Complate") ? SIGButtonStyle.PrimElevBtn_l : SIGButtonStyle.PrimOtlBtn_l,
          child: (arguments?.args1 == "Complate")
              ? Text("미리보기")
              : Text('돌아가기'),
        ),
      ),
    );
  }
}
