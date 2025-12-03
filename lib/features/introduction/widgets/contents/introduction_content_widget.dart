import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frame_creator_v2/animation_components/active_container/active_container_widget.dart';
import 'package:frame_creator_v2/features/introduction/widgets/contents/pomodoro/pomodoro_introduction_content_widget.dart';
import 'package:frame_creator_v2/features/introduction/widgets/contents/vocabulary/vocabulary_introduction_content_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionContentWidget extends StatefulWidget {
  const IntroductionContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy, required this.onComplete});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  final VoidCallback? onComplete;

  @override
  State<IntroductionContentWidget> createState() => _IntroductionContentWidgetState();
}

class _IntroductionContentWidgetState extends State<IntroductionContentWidget> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  bool isFullScreen = true;

  bool isCompleted = false;

  bool isShowVocabularyIntroductionContent = false;
  bool isShowPomodoroIntroductionContent = false;

  @override
  void initState() {
    super.initState();

    isShakeY = Random().nextBool();

    leftPositionLayerA01 = -2100.0;
    leftPositionLayerA02 = -1800.0;
    leftPositionLayerA03 = -950.0;

    rightPositionLayerB01 = -2100.0;
    rightPositionLayerB02 = -1800.0;
    rightPositionLayerB03 = -950.0;

    // return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        if (isCompleted == false) {
          isCompleted = true;

          setState(() {
            leftPositionLayerA01 = -2100.0 - 200.0;
            leftPositionLayerA02 = -1800.0 - 400.0;
            leftPositionLayerA03 = -950.0 - 1000.0;

            rightPositionLayerB01 = -2100.0 - 400.0;
            rightPositionLayerB02 = -1800.0 - 600.0;
            rightPositionLayerB03 = -950.0 - 1300.0;

            Future.delayed(Duration(seconds: 1), () {
              if (mounted) {
                setState(() {
                  isShowVocabularyIntroductionContent = true;
                  isShowPomodoroIntroductionContent = false;
                });
              }
            });

            // return;
          });
        }
      });
    });
  }

  double leftPositionLayerA01 = 0;
  double leftPositionLayerA02 = 0;
  double leftPositionLayerA03 = 0;

  double rightPositionLayerB01 = 0;
  double rightPositionLayerB02 = 0;
  double rightPositionLayerB03 = 0;

  bool isShowContentWord = false;

  bool isShakeY = true;

  @override
  Widget build(BuildContext context) {
    // return Container();

    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
      child: Stack(
        alignment: AlignmentDirectional.center,

        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: -1000.0,
            left: -1000.0,
            width: 5000.0,
            height: 5000.0,
            child: Container(
              width: 5000.0,
              height: 5000.0,
              decoration: BoxDecoration(
                color: Color(0xFF000000).withValues(alpha: 0.9),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
                border: Border.all(width: 15.0, color: Colors.black),
              ),
            ),
          ),

          isShowPomodoroIntroductionContent
              ? Positioned(
                  top: 0,
                  left: 0,
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: FadeInRight(
                    child: PomodoroIntroductionContentWidget(
                      systemStateManagement: widget.systemStateManagement,
                      sizeDx: widget.sizeDx,
                      sizeDy: widget.sizeDy,
                      onComplete: () {
                        Future.delayed(Duration(seconds: 1), () {
                          if (mounted) {
                            // return;

                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              Future.delayed(Duration(seconds: 1), () {
                                setState(() {
                                  leftPositionLayerA01 = -2100.0;
                                  leftPositionLayerA02 = -1800.0;
                                  leftPositionLayerA03 = -950.0;

                                  rightPositionLayerB01 = -2100.0;
                                  rightPositionLayerB02 = -1800.0;
                                  rightPositionLayerB03 = -950.0;
                                });

                                WidgetsBinding.instance.addPostFrameCallback((_) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    if (mounted) {
                                      // widget.onComplete?.call();

                                      if (widget.systemStateManagement?.getIntroductionFeature?.checkConditionActiveByDirection() == true) {
                                        widget.systemStateManagement?.getMainTimelineStateManagement?.getTimeline?.resume();
                                      }
                                    }
                                  });
                                });
                              });
                            });
                          }
                        });
                      },
                    ),
                  ),
                )
              : Container(),

          isShowVocabularyIntroductionContent
              ? Positioned(
                  top: 0,
                  left: 0,
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: FadeInRight(
                    child: VocabularyIntroductionContentWidget(
                      systemStateManagement: widget.systemStateManagement,
                      sizeDx: widget.sizeDx,
                      sizeDy: widget.sizeDy,
                      onComplete: () {
                        Future.delayed(Duration(seconds: 1), () {
                          if (mounted) {
                            // return;

                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              Future.delayed(Duration(seconds: 1), () {
                                setState(() {
                                  /// Đóng
                                  leftPositionLayerA01 = -2100.0;
                                  leftPositionLayerA02 = -1800.0;
                                  leftPositionLayerA03 = -950.0;

                                  rightPositionLayerB01 = -2100.0;
                                  rightPositionLayerB02 = -1800.0;
                                  rightPositionLayerB03 = -950.0;

                                  isShowVocabularyIntroductionContent = false;
                                });

                                WidgetsBinding.instance.addPostFrameCallback((_) {
                                  Future.delayed(Duration(seconds: 1), () {
                                    setState(() {
                                      /// Mở
                                      leftPositionLayerA01 = -2100.0 - 200.0;
                                      leftPositionLayerA02 = -1800.0 - 400.0;
                                      leftPositionLayerA03 = -950.0 - 1000.0;

                                      rightPositionLayerB01 = -2100.0 - 400.0;
                                      rightPositionLayerB02 = -1800.0 - 600.0;
                                      rightPositionLayerB03 = -950.0 - 1300.0;
                                    });

                                    WidgetsBinding.instance.addPostFrameCallback((_) {
                                      Future.delayed(Duration(milliseconds: 500), () {
                                        if (mounted) {
                                          setState(() {
                                            isShowPomodoroIntroductionContent = true;
                                          });
                                        }
                                      });
                                    });
                                  });
                                });
                              });
                            });
                          }
                        });
                      },
                    ),
                  ),
                )
              : Container(),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: isShowVocabularyIntroductionContent ? 115.0 : 100.0,
            left: isShowVocabularyIntroductionContent ? 315.0 : 300.0,
            width: 1000.0,
            height: 180.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 1000.0,
              height: 180.0,
              decoration: BoxDecoration(
                color: isShowVocabularyIntroductionContent ? Color(0xFFF0FFFF).withValues(alpha: 1.0) : Color(0xFF1C1C1C).withValues(alpha: 1.0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
              ),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [mainTitleWidget(title: 'Topic', width: 1000.0, height: 180.0)],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: 100.0,
            left: 300.0,
            width: 1000.0,
            height: 180.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 1000.0,
              height: 180.0,
              decoration: BoxDecoration(
                color: isShowVocabularyIntroductionContent ? Color(0xFFFF4040).withValues(alpha: 1.0) : Color(0xFF1C1C1C).withValues(alpha: 1.0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                border: Border.all(width: 15.0, color: Color(0xFF2C2C2C)),
                boxShadow: [
                  // BoxShadow(
                  //   color: isShowVocabularyIntroductionContent ? Color(0xFFFFFFFF).withValues(alpha: 1.0) : Color(0xFF2C2C2C).withValues(alpha: 1),
                  //   blurRadius: 10.0,
                  //   spreadRadius: 0,
                  //   offset: Offset(3, 3),
                  // ),
                ],
              ),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [mainTitleWidget(title: 'Topic', width: 1000.0, height: 180.0)],
              ),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            top: isShowPomodoroIntroductionContent ? 345.0 : 330.0,
            left: isShowPomodoroIntroductionContent ? 165.0 : 150.0,
            width: 1000.0,
            height: 180.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 1000.0,
              height: 180.0,
              decoration: BoxDecoration(
                color: isShowPomodoroIntroductionContent ? Color(0xFFF0FFFF).withValues(alpha: 1.0) : Color(0xFF1C1C1C).withValues(alpha: 1.0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: 330.0,
            left: 150.0,
            width: 1000.0,
            height: 180.0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 1000.0,
              height: 180.0,
              decoration: BoxDecoration(
                color: isShowPomodoroIntroductionContent ? Color(0xFFFF4040).withValues(alpha: 1.0) : Color(0xFF1C1C1C).withValues(alpha: 1.0),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(5.0), bottomLeft: Radius.circular(5.0)),
                border: Border.all(width: 15.0, color: Color(0xFF2C2C2C)),
                boxShadow: [
                  // BoxShadow(
                  //   color: isShowPomodoroIntroductionContent ? Color(0xFFFFFFFF).withValues(alpha: 1.0) : Color(0xFF2C2C2C).withValues(alpha: 1),
                  //   blurRadius: 10.0,
                  //   spreadRadius: 0,
                  //   offset: Offset(3, 3),
                  // ),
                ],
              ),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [mainTitleWidget(title: 'Pomodoro', width: 1000.0, height: 180.0)],
              ),
            ),
          ),

          isShowContentWord
              ? AnimatedPositioned(
                  left: 380.0,
                  width: 800.0,
                  height: 400.0,
                  duration: const Duration(milliseconds: 100),
                  child: ElasticIn(
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      width: 800.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF000000).withValues(alpha: 0.85),
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(width: 10.0, color: Colors.transparent),
                      ),
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: const Duration(milliseconds: 100),
                            left: 35.0,
                            bottom: 15.0,
                            child: Container(
                              width: widget.sizeDx,
                              height: 150.0,
                              decoration: BoxDecoration(),

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
                                                    'New vocabulary',
                                                    style: GoogleFonts.concertOne(
                                                      textStyle: TextStyle(
                                                        fontSize: 85.0,
                                                        fontWeight: FontWeight.w800,
                                                        fontStyle: FontStyle.normal,
                                                        foreground: Paint()
                                                          ..style = PaintingStyle.stroke
                                                          ..strokeWidth = 8.0
                                                          ..color = Color(0xFF000000), // Màu viền
                                                        letterSpacing: 10.0,
                                                      ),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
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
                                                    'New vocabulary',
                                                    style: GoogleFonts.concertOne(
                                                      textStyle: TextStyle(fontSize: 85.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFF00FF7F), letterSpacing: 10.0),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 2,
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
                        ],
                      ),
                    ),
                  ),
                )
              : Container(),

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  width: widget.sizeDx,
                  height: widget.sizeDy,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      /// TODO: Layer A03
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 600),

                        top: -1000.0,
                        left: leftPositionLayerA03,
                        width: 1500.0,
                        height: 5000.0,
                        child: Transform.rotate(
                          angle: pi * 0.2,
                          child: Container(
                            width: 1500.0,
                            height: 5000.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF00FF00).withValues(alpha: 1.0),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                          ),
                        ),
                      ),

                      /// TODO: Layer A02
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 500),
                        top: -1000.0,
                        left: leftPositionLayerA02,
                        width: 1500.0,
                        height: 5000.0,
                        child: Transform.rotate(
                          angle: pi * 0.2,
                          child: Container(
                            width: 1500.0,
                            height: 5000.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF000000).withValues(alpha: 0.8),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Positioned(
                                  height: 5000.0,
                                  width: 5000.0,
                                  bottom: 100.0,
                                  child: Transform.rotate(
                                    angle: pi * 0.5,
                                    child: Container(
                                      height: 5000.0,
                                      width: 5000.0,
                                      decoration: BoxDecoration(color: Colors.transparent),
                                      child: ActiveContainerWidget(isReverse: true, color: Color(0xFFFF7F24), width: 5000, height: 1500, numBars: 60),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// TODO: Layer A01
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 500),
                        top: -1000.0,
                        left: leftPositionLayerA01,
                        width: 1500.0,
                        height: 5000.0,
                        child: Transform.rotate(
                          angle: pi * 0.2,
                          child: Container(
                            width: 1500.0,
                            height: 5000.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF7F24).withValues(alpha: 1.0),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                              border: Border.all(width: 15.0, color: Colors.black),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                          ),
                        ),
                      ),

                      /// TODO: Layer B03
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 600),
                        bottom: -1000.0,
                        right: rightPositionLayerB03,
                        width: 1500.0,
                        height: 5000.0,
                        child: Transform.rotate(
                          angle: pi * 0.2,
                          child: Container(
                            width: 1500.0,
                            height: 5000.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF00FF00).withValues(alpha: 1.0),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 1), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                          ),
                        ),
                      ),

                      /// TODO: Layer B02
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 500),
                        bottom: -1000.0,
                        right: rightPositionLayerB02,
                        width: 1500.0,
                        height: 5000.0,
                        child: Transform.rotate(
                          angle: pi * 0.2,
                          child: Container(
                            width: 1500.0,
                            height: 5000.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF000000).withValues(alpha: 0.8),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                            child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Positioned(
                                  height: 5000.0,
                                  width: 5000.0,
                                  top: 100.0,
                                  child: Transform.rotate(
                                    angle: pi * -0.5,
                                    child: Container(
                                      height: 5000.0,
                                      width: 5000.0,
                                      decoration: BoxDecoration(color: Colors.transparent),
                                      child: ActiveContainerWidget(isReverse: true, color: Color(0xFF00FF00), width: 5000, height: 1500, numBars: 60),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      /// TODO: Layer B01
                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 500),
                        bottom: -1000.0,
                        right: rightPositionLayerB01,
                        width: 1500.0,
                        height: 5000.0,
                        child: Transform.rotate(
                          angle: pi * 0.2,
                          child: Container(
                            width: 1500.0,
                            height: 5000.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF7F24).withValues(alpha: 1.0),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                              border: Border.all(width: 15.0, color: Colors.black),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
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

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(30.0)),
                border: Border.all(width: 15.0, color: Colors.black),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 10.0,
            width: 650.0,
            height: 120.0,
            child: Container(
              width: 650.0,
              height: 120.0,
              decoration: BoxDecoration(color: Color(0xFF000000).withValues(alpha: 0.8), borderRadius: BorderRadius.circular(0)),
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            left: 35.0,
            bottom: 15.0,
            height: 120.0,
            child: Container(
              width: widget.sizeDx,
              height: 120.0,
              decoration: BoxDecoration(),

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
                                    'Introduction',
                                    style: GoogleFonts.poetsenOne(
                                      textStyle: TextStyle(
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold,
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
                                    'Introduction',
                                    style: GoogleFonts.poetsenOne(
                                      textStyle: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 10.0),
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
          ),
        ],
      ),
    );
  }

  Widget vocabularyList({required double width, required double height}) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
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
            vocabularyWidget(title: 'Vocabulary', left: 250.0, bottom: 0),
            vocabularyWidget(title: 'Vocabulary', left: 200.0 * 2.0, bottom: 0 + 200.0),
            vocabularyWidget(title: 'Vocabulary', left: 200.0 * 3.0, bottom: 0 + 200.0 * 2),
            vocabularyWidget(title: 'Vocabulary', left: 200.0 * 4.0, bottom: 0 + 200.0 * 3),
            vocabularyWidget(title: 'Vocabulary', left: 200.0 * 5.0, bottom: 0 + 200.0 * 4),
          ],
        ),
      ),
    );
  }

  Widget vocabularyWidget({required String title, required double left, required double bottom}) {
    return AnimatedPositioned(
      left: left,
      bottom: bottom,
      width: 850.0,
      height: 150.0,
      duration: const Duration(milliseconds: 100),
      child: Stack(
        children: [
          Positioned(
            left: 5.0,
            top: 20.0,
            width: 850.0,
            height: 120.0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF1C1C1C).withValues(alpha: 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
                boxShadow: [BoxShadow(color: Color(0xFF1C1C1C).withValues(alpha: 1.0), blurRadius: 1.0, spreadRadius: 1.0, offset: Offset(-1, 1))],
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
                color: Color(0xFF54FF9F).withValues(alpha: 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(1.0), topRight: Radius.circular(1.0), bottomRight: Radius.circular(1.0), bottomLeft: Radius.circular(1.0)),
              ),
              child: Text(
                title,
                style: GoogleFonts.coiny(
                  textStyle: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFF363636), letterSpacing: 10.0),
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
      left: 0,
      width: width,
      height: height,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.only(right: 50.0, left: 30.0),

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
                                  fontSize: 60.0,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  foreground: Paint()
                                    ..style = PaintingStyle.stroke
                                    ..strokeWidth = 10.0
                                    ..color = Color(0xFF000000), // Màu viền
                                  letterSpacing: 7.0,
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
                                textStyle: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 7.0),
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
      bottom: 15.0,
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
                              style: GoogleFonts.dangrek(
                                textStyle: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 10.0),
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
