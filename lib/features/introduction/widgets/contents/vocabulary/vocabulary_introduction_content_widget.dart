import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class VocabularyIntroductionContentWidget extends StatefulWidget {
  const VocabularyIntroductionContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy, required this.onComplete});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  final VoidCallback? onComplete;

  @override
  State<VocabularyIntroductionContentWidget> createState() => _VocabularyIntroductionContentWidgetState();
}

class _VocabularyIntroductionContentWidgetState extends State<VocabularyIntroductionContentWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  Timer? _timer;

  bool isCompleted = false;

  VocabularyItemModel? vocabularyItemSS01;
  VocabularyItemModel? vocabularyItemSS02;
  VocabularyItemModel? vocabularyItemSS03;
  VocabularyItemModel? vocabularyItemSS04;
  VocabularyItemModel? vocabularyItemSS05;
  VocabularyItemModel? vocabularyItemSS06;
  VocabularyItemModel? vocabularyItemSS07;
  VocabularyItemModel? vocabularyItemSS08;
  VocabularyItemModel? vocabularyItemSS09;
  VocabularyItemModel? vocabularyItemSS10;
  VocabularyItemModel? vocabularyItemSS11;
  VocabularyItemModel? vocabularyItemSS12;
  VocabularyItemModel? vocabularyItemSS13;
  VocabularyItemModel? vocabularyItemSS14;
  VocabularyItemModel? vocabularyItemSS15;
  VocabularyItemModel? vocabularyItemSS16;
  VocabularyItemModel? vocabularyItemSS17;
  VocabularyItemModel? vocabularyItemSS18;
  VocabularyItemModel? vocabularyItemSS19;
  VocabularyItemModel? vocabularyItemSS20;
  VocabularyItemModel? vocabularyItemSS21;
  VocabularyItemModel? vocabularyItemSS22;
  VocabularyItemModel? vocabularyItemSS23;
  VocabularyItemModel? vocabularyItemSS24;
  VocabularyItemModel? vocabularyItemSS25;
  VocabularyItemModel? vocabularyItemSS26;
  VocabularyItemModel? vocabularyItemSS27;
  VocabularyItemModel? vocabularyItemSS28;
  VocabularyItemModel? vocabularyItemSS29;
  VocabularyItemModel? vocabularyItemSS30;

  @override
  void initState() {
    super.initState();

    vocabularyItemSS01 = VocabularyItemModel(word: 'VocabularyItem 01', width: 850.0, height: 150.0, left: 1500 - (30.0 * 1) - 0, bottom: 180.0 * 5 - 0, isRunIn: true);
    vocabularyItemSS02 = VocabularyItemModel(word: 'VocabularyItem 02', width: 850.0, height: 150.0, left: 1400 - (29.5 * 2) - 2 * 2, bottom: 180.0 * 4, isRunIn: true);
    vocabularyItemSS03 = VocabularyItemModel(word: 'VocabularyItem 03', width: 850.0, height: 150.0, left: 1300 - (29.0 * 3) - 5 * 2, bottom: 180.0 * 3, isRunIn: true);
    vocabularyItemSS04 = VocabularyItemModel(word: 'VocabularyItem 04', width: 850.0, height: 150.0, left: 1200 - (28.5 * 4) - 9 * 2, bottom: 180.0 * 2, isRunIn: true);
    vocabularyItemSS05 = VocabularyItemModel(word: 'VocabularyItem 05', width: 850.0, height: 150.0, left: 1100 - (28.0 * 5) - 14 * 2, bottom: 180.0 * 1, isRunIn: true);
    vocabularyItemSS06 = VocabularyItemModel(word: 'VocabularyItem 06', width: 850.0, height: 150.0, left: 1000 - (27.5 * 6) - 20 * 2, bottom: 180.0 * 0, isRunIn: true);
    vocabularyItemSS07 = VocabularyItemModel(word: 'VocabularyItem 07', width: 850.0, height: 150.0, left: 900 - (27.0 * 7) - 27 * 2, bottom: -180.0 * 1, isRunIn: true);
    vocabularyItemSS08 = VocabularyItemModel(word: 'VocabularyItem 08', width: 850.0, height: 150.0, left: 800 - (26.5 * 8) - 35 * 2, bottom: -180.0 * 2, isRunIn: true);
    vocabularyItemSS09 = VocabularyItemModel(word: 'VocabularyItem 09', width: 850.0, height: 150.0, left: 700 - (26.0 * 9) - 44 * 2, bottom: -180.0 * 3, isRunIn: true);
    vocabularyItemSS10 = VocabularyItemModel(word: 'VocabularyItem 10', width: 850.0, height: 150.0, left: 600 - (25.5 * 10) - 54 * 2, bottom: -180.0 * 4, isRunIn: true);

    vocabularyItemSS11 = VocabularyItemModel(word: 'VocabularyItem 11', width: 850.0, height: 150.0, left: 500 - (25.0 * 11) - 65 * 2, bottom: -180.0 * 5, isRunIn: true);
    vocabularyItemSS12 = VocabularyItemModel(word: 'VocabularyItem 12', width: 850.0, height: 150.0, left: 400 - (24.5 * 12) - 77 * 2, bottom: -180.0 * 6, isRunIn: true);
    vocabularyItemSS13 = VocabularyItemModel(word: 'VocabularyItem 13', width: 850.0, height: 150.0, left: 300 - (24.0 * 13) - 90 * 2, bottom: -180.0 * 7, isRunIn: true);
    vocabularyItemSS14 = VocabularyItemModel(word: 'VocabularyItem 14', width: 850.0, height: 150.0, left: 200 - (23.5 * 14) - 104 * 2, bottom: -180.0 * 8, isRunIn: true);
    vocabularyItemSS15 = VocabularyItemModel(word: 'VocabularyItem 15', width: 850.0, height: 150.0, left: 100 - (23.0 * 15) - 119 * 2, bottom: -180.0 * 9, isRunIn: true);
    vocabularyItemSS16 = VocabularyItemModel(word: 'VocabularyItem 16', width: 850.0, height: 150.0, left: 0 - (22.5 * 16) - 135 * 2, bottom: -180.0 * 10, isRunIn: true);
    vocabularyItemSS17 = VocabularyItemModel(word: 'VocabularyItem 17', width: 850.0, height: 150.0, left: -100 - (22.0 * 17) - 152 * 2, bottom: -180.0 * 11, isRunIn: true);
    vocabularyItemSS18 = VocabularyItemModel(word: 'VocabularyItem 18', width: 850.0, height: 150.0, left: -200 - (21.5 * 18) - 170 * 2, bottom: -180.0 * 12, isRunIn: true);
    vocabularyItemSS19 = VocabularyItemModel(word: 'VocabularyItem 19', width: 850.0, height: 150.0, left: -300 - (21.0 * 19) - 189 * 2, bottom: -180.0 * 13, isRunIn: true);
    vocabularyItemSS20 = VocabularyItemModel(word: 'VocabularyItem 20', width: 850.0, height: 150.0, left: -400 - (20.5 * 20) - 209 * 2, bottom: -180.0 * 14, isRunIn: true);

    vocabularyItemSS21 = VocabularyItemModel(word: 'VocabularyItem 10', width: 850.0, height: 150.0, left: -500 - (20.0 * 21) - 230 * 2, bottom: -180.0 * 15, isRunIn: true);
    vocabularyItemSS22 = VocabularyItemModel(word: 'VocabularyItem 11', width: 850.0, height: 150.0, left: -600 - (19.5 * 22) - 252 * 2, bottom: -180.0 * 16, isRunIn: true);
    vocabularyItemSS23 = VocabularyItemModel(word: 'VocabularyItem 12', width: 850.0, height: 150.0, left: -700 - (19.0 * 23) - 275 * 2, bottom: -180.0 * 17, isRunIn: true);
    vocabularyItemSS24 = VocabularyItemModel(word: 'VocabularyItem 13', width: 850.0, height: 150.0, left: -800 - (18.5 * 24) - 299 * 2, bottom: -180.0 * 18, isRunIn: true);
    vocabularyItemSS25 = VocabularyItemModel(word: 'VocabularyItem 14', width: 850.0, height: 150.0, left: -900 - (18.0 * 25) - 324 * 2, bottom: -180.0 * 19, isRunIn: true);
    vocabularyItemSS26 = VocabularyItemModel(word: 'VocabularyItem 15', width: 850.0, height: 150.0, left: -1000 - (17.5 * 26) - 350 * 2, bottom: -180.0 * 20, isRunIn: true);
    vocabularyItemSS27 = VocabularyItemModel(word: 'VocabularyItem 16', width: 850.0, height: 150.0, left: -1100 - (17.0 * 27) - 377 * 2, bottom: -180.0 * 21, isRunIn: true);
    vocabularyItemSS28 = VocabularyItemModel(word: 'VocabularyItem 17', width: 850.0, height: 150.0, left: -1200 - (16.5 * 28) - 405 * 2, bottom: -180.0 * 22, isRunIn: true);
    vocabularyItemSS29 = VocabularyItemModel(word: 'VocabularyItem 18', width: 850.0, height: 150.0, left: -1300 - (16.0 * 29) - 434 * 2, bottom: -180.0 * 23, isRunIn: true);
    vocabularyItemSS30 = VocabularyItemModel(word: 'VocabularyItem 19', width: 850.0, height: 150.0, left: -1400 - (15.5 * 30) - 464 * 2, bottom: -180.0 * 24, isRunIn: true);

    Future.delayed(Duration(seconds: 1), () {
      if (mounted) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          // });
          //
          _timer = Timer.periodic(const Duration(milliseconds: 30), (timer) {
            // return;

            if ((vocabularyItemSS15?.left ?? 0) >= 1600.0 && isCompleted == false) {
              widget.onComplete?.call();
              isCompleted = true;
            }

            if ((vocabularyItemSS15?.bottom ?? 0) >= 100) {
              vocabularyItemSS01?.updateRunOut();
              vocabularyItemSS02?.updateRunOut();
              vocabularyItemSS03?.updateRunOut();
              vocabularyItemSS04?.updateRunOut();
              vocabularyItemSS05?.updateRunOut();
              vocabularyItemSS06?.updateRunOut();
              vocabularyItemSS07?.updateRunOut();
              vocabularyItemSS08?.updateRunOut();
              vocabularyItemSS09?.updateRunOut();
              vocabularyItemSS10?.updateRunOut();
              vocabularyItemSS11?.updateRunOut();
              vocabularyItemSS12?.updateRunOut();
              vocabularyItemSS13?.updateRunOut();
              vocabularyItemSS14?.updateRunOut();
              vocabularyItemSS15?.updateRunOut();
              vocabularyItemSS16?.updateRunOut();
              vocabularyItemSS17?.updateRunOut();
              vocabularyItemSS18?.updateRunOut();
              vocabularyItemSS19?.updateRunOut();
              vocabularyItemSS20?.updateRunOut();
              vocabularyItemSS21?.updateRunOut();
              vocabularyItemSS22?.updateRunOut();
              vocabularyItemSS23?.updateRunOut();
              vocabularyItemSS24?.updateRunOut();
              vocabularyItemSS25?.updateRunOut();
              vocabularyItemSS26?.updateRunOut();
              vocabularyItemSS27?.updateRunOut();
              vocabularyItemSS28?.updateRunOut();
              vocabularyItemSS29?.updateRunOut();
              vocabularyItemSS30?.updateRunOut();

              setState(() {
                vocabularyItemSS01?.onUpdate();
                vocabularyItemSS02?.onUpdate();
                vocabularyItemSS03?.onUpdate();
                vocabularyItemSS04?.onUpdate();
                vocabularyItemSS05?.onUpdate();
                vocabularyItemSS06?.onUpdate();
                vocabularyItemSS07?.onUpdate();
                vocabularyItemSS08?.onUpdate();
                vocabularyItemSS09?.onUpdate();
                vocabularyItemSS10?.onUpdate();
                vocabularyItemSS11?.onUpdate();
                vocabularyItemSS12?.onUpdate();
                vocabularyItemSS13?.onUpdate();
                vocabularyItemSS14?.onUpdate();
                vocabularyItemSS15?.onUpdate();
                vocabularyItemSS16?.onUpdate();
                vocabularyItemSS17?.onUpdate();
                vocabularyItemSS18?.onUpdate();
                vocabularyItemSS19?.onUpdate();
                vocabularyItemSS20?.onUpdate();
                vocabularyItemSS21?.onUpdate();
                vocabularyItemSS22?.onUpdate();
                vocabularyItemSS23?.onUpdate();
                vocabularyItemSS24?.onUpdate();
                vocabularyItemSS25?.onUpdate();
                vocabularyItemSS26?.onUpdate();
                vocabularyItemSS27?.onUpdate();
                vocabularyItemSS28?.onUpdate();
                vocabularyItemSS29?.onUpdate();
                vocabularyItemSS30?.onUpdate();
              });

              return;
            }

            vocabularyItemSS01?.updateRunIn();
            vocabularyItemSS02?.updateRunIn();
            vocabularyItemSS03?.updateRunIn();
            vocabularyItemSS04?.updateRunIn();
            vocabularyItemSS05?.updateRunIn();
            vocabularyItemSS06?.updateRunIn();
            vocabularyItemSS07?.updateRunIn();
            vocabularyItemSS08?.updateRunIn();
            vocabularyItemSS09?.updateRunIn();
            vocabularyItemSS10?.updateRunIn();
            vocabularyItemSS11?.updateRunIn();
            vocabularyItemSS12?.updateRunIn();
            vocabularyItemSS13?.updateRunIn();
            vocabularyItemSS14?.updateRunIn();
            vocabularyItemSS15?.updateRunIn();
            vocabularyItemSS16?.updateRunIn();
            vocabularyItemSS17?.updateRunIn();
            vocabularyItemSS18?.updateRunIn();
            vocabularyItemSS19?.updateRunIn();
            vocabularyItemSS20?.updateRunIn();
            vocabularyItemSS21?.updateRunIn();
            vocabularyItemSS22?.updateRunIn();
            vocabularyItemSS23?.updateRunIn();
            vocabularyItemSS24?.updateRunIn();
            vocabularyItemSS25?.updateRunIn();
            vocabularyItemSS26?.updateRunIn();
            vocabularyItemSS27?.updateRunIn();
            vocabularyItemSS28?.updateRunIn();
            vocabularyItemSS29?.updateRunIn();
            vocabularyItemSS30?.updateRunIn();

            setState(() {
              vocabularyItemSS01?.onUpdate();
              vocabularyItemSS02?.onUpdate();
              vocabularyItemSS03?.onUpdate();
              vocabularyItemSS04?.onUpdate();
              vocabularyItemSS05?.onUpdate();
              vocabularyItemSS06?.onUpdate();
              vocabularyItemSS07?.onUpdate();
              vocabularyItemSS08?.onUpdate();
              vocabularyItemSS09?.onUpdate();
              vocabularyItemSS10?.onUpdate();
              vocabularyItemSS11?.onUpdate();
              vocabularyItemSS12?.onUpdate();
              vocabularyItemSS13?.onUpdate();
              vocabularyItemSS14?.onUpdate();
              vocabularyItemSS15?.onUpdate();
              vocabularyItemSS16?.onUpdate();
              vocabularyItemSS17?.onUpdate();
              vocabularyItemSS18?.onUpdate();
              vocabularyItemSS19?.onUpdate();
              vocabularyItemSS20?.onUpdate();
              vocabularyItemSS21?.onUpdate();
              vocabularyItemSS22?.onUpdate();
              vocabularyItemSS23?.onUpdate();
              vocabularyItemSS24?.onUpdate();
              vocabularyItemSS25?.onUpdate();
              vocabularyItemSS26?.onUpdate();
              vocabularyItemSS27?.onUpdate();
              vocabularyItemSS28?.onUpdate();
              vocabularyItemSS29?.onUpdate();
              vocabularyItemSS30?.onUpdate();
            });
          });
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return Container();

    return Stack(
      children: [
        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: -500.0,
          right: -800.0,
          width: 2000.0,
          height: 3000.0,
          child: Transform.rotate(
            angle: pi * 0.2,
            child: Container(
              width: 2000.0,
              height: 3000.0,
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C).withValues(alpha: 0.85),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                border: Border.all(width: 15.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.9)),
              ),
            ),
          ),
        ),

        // AnimatedPositioned(
        //   duration: const Duration(milliseconds: 500),
        //   top: -150.0,
        //   right: -1200.0,
        //   width: 2500.0,
        //   height: 2000.0,
        //   child: Transform.rotate(
        //     angle: pi * -0.3,
        //     child: Container(
        //       width: 2500.0,
        //       height: 3000.0,
        //       decoration: BoxDecoration(
        //         color: Color(0xFFFFFFFF).withValues(alpha: 0),
        //         borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
        //         image: DecorationImage(image: AssetImage('assets/images/background/background_04.jpg'), fit: BoxFit.fitHeight),
        //       ),
        //     ),
        //   ),
        // ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: 0,
          right: -500.0,
          width: 2500.0,
          height: 1440.0,
          child: Container(
            width: 2500.0,
            height: 1440.0,
            decoration: BoxDecoration(
              color: Color(0xFF54FF9F).withValues(alpha: 0),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            ),

            child: Stack(alignment: AlignmentDirectional.center, children: [vocabularyList(width: 2500.0, height: 1440.0)]),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: -150.0,
          right: -1450.0,
          width: 2500.0,
          height: 3000.0,
          child: Transform.rotate(
            angle: pi * -0.3,
            child: Container(
              width: 2500.0,
              height: 3000.0,
              decoration: BoxDecoration(
                color: Color(0xFFFFFFFF).withValues(alpha: 0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
              ),

              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 2000.0,
                    height: 160.0,
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.white.withValues(alpha: 0.9),
                            Colors.white.withValues(alpha: 0.8),
                            Colors.white.withValues(alpha: 0.7),
                            Colors.white.withValues(alpha: 0.6),
                            Colors.white.withValues(alpha: 0.5),
                            Colors.white.withValues(alpha: 0.4),
                            Colors.white.withValues(alpha: 0.3),
                            Colors.white.withValues(alpha: 0.2),
                            Colors.white.withValues(alpha: 0.1),
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent, // Hoàn toàn biến mất bên phải
                          ],
                          stops: [0.40, 0.45, 0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.0],
                        ).createShader(bounds);
                      },
                      child: Container(color: Color(0xFF1C1C1C)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 1800.0,
                    height: 160.0,
                    child: Container(
                      color: Colors.transparent,
                      child: Stack(children: [topicTitleWidget(title: 'AnimatedController extensions', width: 1800.0, height: 160.0)]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        AnimatedPositioned(
          duration: const Duration(milliseconds: 500),
          top: -150.0,
          right: -1650.0,
          width: 2500.0,
          height: 3000.0,
          child: Transform.rotate(
            angle: pi * -0.3,
            child: Container(
              width: 2500.0,
              height: 3000.0,
              decoration: BoxDecoration(
                color: Color(0xFF000000).withValues(alpha: 0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
              ),

              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 2000.0,
                    height: 130.0,
                    child: ShaderMask(
                      blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Colors.white,
                            Colors.white.withValues(alpha: 0.9),
                            Colors.white.withValues(alpha: 0.8),
                            Colors.white.withValues(alpha: 0.7),
                            Colors.white.withValues(alpha: 0.6),
                            Colors.white.withValues(alpha: 0.5),
                            Colors.white.withValues(alpha: 0.4),
                            Colors.white.withValues(alpha: 0.3),
                            Colors.white.withValues(alpha: 0.2),
                            Colors.white.withValues(alpha: 0.1),
                            Colors.transparent,
                            Colors.transparent,
                            Colors.transparent, // Hoàn toàn biến mất bên phải
                          ],
                          stops: [0.40, 0.45, 0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.0],
                        ).createShader(bounds);
                      },
                      child: Container(color: Color(0xFF7FFFD4)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    width: 1800.0,
                    height: 130.0,
                    child: Container(
                      color: Colors.transparent,
                      child: Stack(children: [subTopicTitleWidget(title: 'AnimatedController extensions', width: 1800.0, height: 130.0)]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget vocabularyList({required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 1),
      left: 0,
      bottom: 0,
      width: width,
      height: height,
      child: Container(
        color: Colors.transparent,
        padding: EdgeInsets.all(10.0),
        width: width,
        height: height,
        child: Stack(
          children: [
            ///
            vocabularyWidget(index: 1, title: vocabularyItemSS01?.word ?? 'Vocabulary 1', left: vocabularyItemSS01?.left ?? 0, bottom: vocabularyItemSS01?.bottom ?? 0),
            vocabularyWidget(index: 2, title: vocabularyItemSS02?.word ?? 'Vocabulary 1', left: vocabularyItemSS02?.left ?? 0, bottom: vocabularyItemSS02?.bottom ?? 0),
            vocabularyWidget(index: 3, title: vocabularyItemSS03?.word ?? 'Vocabulary 1', left: vocabularyItemSS03?.left ?? 0, bottom: vocabularyItemSS03?.bottom ?? 0),
            vocabularyWidget(index: 4, title: vocabularyItemSS04?.word ?? 'Vocabulary 1', left: vocabularyItemSS04?.left ?? 0, bottom: vocabularyItemSS04?.bottom ?? 0),
            vocabularyWidget(index: 5, title: vocabularyItemSS05?.word ?? 'Vocabulary 1', left: vocabularyItemSS05?.left ?? 0, bottom: vocabularyItemSS05?.bottom ?? 0),
            vocabularyWidget(index: 6, title: vocabularyItemSS06?.word ?? 'Vocabulary 1', left: vocabularyItemSS06?.left ?? 0, bottom: vocabularyItemSS06?.bottom ?? 0),
            vocabularyWidget(index: 7, title: vocabularyItemSS07?.word ?? 'Vocabulary 1', left: vocabularyItemSS07?.left ?? 0, bottom: vocabularyItemSS07?.bottom ?? 0),
            vocabularyWidget(index: 8, title: vocabularyItemSS08?.word ?? 'Vocabulary 1', left: vocabularyItemSS08?.left ?? 0, bottom: vocabularyItemSS08?.bottom ?? 0),
            vocabularyWidget(index: 9, title: vocabularyItemSS09?.word ?? 'Vocabulary 1', left: vocabularyItemSS09?.left ?? 0, bottom: vocabularyItemSS09?.bottom ?? 0),
            vocabularyWidget(index: 10, title: vocabularyItemSS10?.word ?? 'Vocabulary 1', left: vocabularyItemSS10?.left ?? 0, bottom: vocabularyItemSS10?.bottom ?? 0),

            ///
            vocabularyWidget(index: 11, title: vocabularyItemSS11?.word ?? 'Vocabulary 1', left: vocabularyItemSS11?.left ?? 0, bottom: vocabularyItemSS11?.bottom ?? 0),
            vocabularyWidget(index: 12, title: vocabularyItemSS12?.word ?? 'Vocabulary 1', left: vocabularyItemSS12?.left ?? 0, bottom: vocabularyItemSS12?.bottom ?? 0),
            vocabularyWidget(index: 13, title: vocabularyItemSS13?.word ?? 'Vocabulary 1', left: vocabularyItemSS13?.left ?? 0, bottom: vocabularyItemSS13?.bottom ?? 0),
            vocabularyWidget(index: 14, title: vocabularyItemSS14?.word ?? 'Vocabulary 1', left: vocabularyItemSS14?.left ?? 0, bottom: vocabularyItemSS14?.bottom ?? 0),
            vocabularyWidget(index: 15, title: vocabularyItemSS15?.word ?? 'Vocabulary 1', left: vocabularyItemSS15?.left ?? 0, bottom: vocabularyItemSS15?.bottom ?? 0),
            vocabularyWidget(index: 16, title: vocabularyItemSS16?.word ?? 'Vocabulary 1', left: vocabularyItemSS16?.left ?? 0, bottom: vocabularyItemSS16?.bottom ?? 0),
            vocabularyWidget(index: 17, title: vocabularyItemSS17?.word ?? 'Vocabulary 1', left: vocabularyItemSS17?.left ?? 0, bottom: vocabularyItemSS17?.bottom ?? 0),
            vocabularyWidget(index: 18, title: vocabularyItemSS18?.word ?? 'Vocabulary 1', left: vocabularyItemSS18?.left ?? 0, bottom: vocabularyItemSS18?.bottom ?? 0),
            vocabularyWidget(index: 19, title: vocabularyItemSS19?.word ?? 'Vocabulary 1', left: vocabularyItemSS19?.left ?? 0, bottom: vocabularyItemSS19?.bottom ?? 0),
            vocabularyWidget(index: 20, title: vocabularyItemSS20?.word ?? 'Vocabulary 1', left: vocabularyItemSS20?.left ?? 0, bottom: vocabularyItemSS20?.bottom ?? 0),

            ///
            vocabularyWidget(index: 21, title: vocabularyItemSS21?.word ?? 'Vocabulary 1', left: vocabularyItemSS21?.left ?? 0, bottom: vocabularyItemSS21?.bottom ?? 0),
            vocabularyWidget(index: 22, title: vocabularyItemSS22?.word ?? 'Vocabulary 1', left: vocabularyItemSS22?.left ?? 0, bottom: vocabularyItemSS22?.bottom ?? 0),
            vocabularyWidget(index: 23, title: vocabularyItemSS23?.word ?? 'Vocabulary 1', left: vocabularyItemSS23?.left ?? 0, bottom: vocabularyItemSS23?.bottom ?? 0),
            vocabularyWidget(index: 24, title: vocabularyItemSS24?.word ?? 'Vocabulary 1', left: vocabularyItemSS24?.left ?? 0, bottom: vocabularyItemSS24?.bottom ?? 0),
            vocabularyWidget(index: 25, title: vocabularyItemSS25?.word ?? 'Vocabulary 1', left: vocabularyItemSS25?.left ?? 0, bottom: vocabularyItemSS25?.bottom ?? 0),
            vocabularyWidget(index: 26, title: vocabularyItemSS26?.word ?? 'Vocabulary 1', left: vocabularyItemSS26?.left ?? 0, bottom: vocabularyItemSS26?.bottom ?? 0),
            vocabularyWidget(index: 27, title: vocabularyItemSS27?.word ?? 'Vocabulary 1', left: vocabularyItemSS27?.left ?? 0, bottom: vocabularyItemSS27?.bottom ?? 0),
            vocabularyWidget(index: 28, title: vocabularyItemSS28?.word ?? 'Vocabulary 1', left: vocabularyItemSS28?.left ?? 0, bottom: vocabularyItemSS28?.bottom ?? 0),
            vocabularyWidget(index: 29, title: vocabularyItemSS29?.word ?? 'Vocabulary 1', left: vocabularyItemSS29?.left ?? 0, bottom: vocabularyItemSS29?.bottom ?? 0),
            vocabularyWidget(index: 30, title: vocabularyItemSS30?.word ?? 'Vocabulary 1', left: vocabularyItemSS30?.left ?? 0, bottom: vocabularyItemSS30?.bottom ?? 0),
          ],
        ),
      ),
    );
  }

  Widget vocabularyWidget({required int index, required String title, required double left, required double bottom}) {
    Color backgroundColor = Color(0xFF1C1C1C).withValues(alpha: 1);
    Color textColor = Color(0xFF1C1C1C).withValues(alpha: 1);

    if (index % 2 == 0) {
      backgroundColor = Color(0xFFFFFF00).withValues(alpha: 1);
      textColor = Color(0xFF1C1C1C).withValues(alpha: 1);
    } else {
      backgroundColor = Color(0xFF2C2C2C).withValues(alpha: 1);
      textColor = Color(0xFFF0FFFF).withValues(alpha: 1);
    }

    return AnimatedPositioned(
      left: left,
      bottom: bottom,
      width: 850.0,
      height: 150.0,
      duration: const Duration(milliseconds: 10),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            left: 5.0,
            top: 20.0,
            width: 850.0,
            height: 120.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF3C3C3C).withValues(alpha: 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
                boxShadow: [BoxShadow(color: Color(0xFF3C3C3C).withValues(alpha: 1.0), blurRadius: 1.0, spreadRadius: 1.0, offset: Offset(-1, 1))],
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 5.0,
            width: 850.0,
            height: 120.0,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
              ),
              child: Text(
                title,
                style: GoogleFonts.coiny(
                  textStyle: TextStyle(fontSize: 45.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: textColor, letterSpacing: 2.0),
                ),
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget mainTitleWidget({required String title, required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: 35.0,
      bottom: 15.0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 30.0, left: 30.0),

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.titanOne(
                                textStyle: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 10.0
                                    ..color = Color(0xFF000000), // Màu viền
                                  letterSpacing: 10.0,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.titanOne(
                                textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 10.0),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
    );
  }

  Widget topicTitleWidget({required String title, required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: 35.0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 30.0, left: 250.0),

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w800,
                                  fontStyle: FontStyle.normal,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 10.0
                                    ..color = Color(0xFF000000), // Màu viền
                                  letterSpacing: 5.0,
                                ),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
    );
  }

  Widget subTopicTitleWidget({required String title, required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: 35.0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 30.0, left: 250.0),

        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                color: Colors.transparent,
                child: Stack(
                  children: [
                    // Positioned(
                    //   child: Row(
                    //     mainAxisSize: MainAxisSize.min,
                    //     children: [
                    //       Flexible(
                    //         child: Text(
                    //           title,
                    //           style: GoogleFonts.dangrek(
                    //             textStyle: TextStyle(
                    //               fontSize: 55.0,
                    //               fontWeight: FontWeight.w800,
                    //               fontStyle: FontStyle.normal,
                    //               foreground: Paint()
                    //                 ..style = PaintingStyle.stroke
                    //                 ..strokeWidth = 10.0
                    //                 ..color = Color(0xFF000000), // Màu viền
                    //               letterSpacing: 5.0,
                    //             ),
                    //           ),
                    //           textAlign: TextAlign.center,
                    //           overflow: TextOverflow.ellipsis,
                    //           maxLines: 1,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    Positioned(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Text(
                              title,
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(fontSize: 55.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFF1C1C1C), letterSpacing: 5.0),
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
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
    );
  }
}

class VocabularyItemModel {
  VocabularyItemModel({required this.word, required this.width, required this.height, required this.left, required this.bottom, required this.isRunIn});

  String? word;

  double? width;

  double? height;

  double? left;

  double? bottom;

  bool? isRunIn;
  bool? isRunOut;

  void updateRunIn() {
    isRunIn = true;
    isRunOut = false;
  }

  void updateRunOut() {
    isRunIn = false;
    isRunOut = true;
  }

  void onUpdate() {
    if (isRunIn == true) {
      if ((bottom ?? 0) > 1000.0) {
        updateRunOut();
      }

      onUpdateIn();
    }

    onUpdateOut();
  }

  void onUpdateIn() {
    if (isRunIn == true) {
      left = (left ?? 0) + 2.0;
      bottom = (bottom ?? 0) + 2.5;
    }
  }

  void onUpdateOut() {
    if (isRunOut == true) {
      left = (left ?? 0) + 20.0;
      bottom = (bottom ?? 0) + 2.5;
    }
  }
}
