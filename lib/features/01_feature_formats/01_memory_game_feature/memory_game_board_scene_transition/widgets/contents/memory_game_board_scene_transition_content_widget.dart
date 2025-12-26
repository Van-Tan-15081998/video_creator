import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/animation_components/active_container/active_container_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS01_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS02_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS03_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS04_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS05_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS06_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS07_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS08_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS09_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS10_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS11_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS12_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS13_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS14_animated_background_widget.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/helpful_study_advice/vocabulary_transition_SS15_animated_background_widget.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget.dart';
import 'package:frame_creator_v2/features/vocabulary_definition/models/data/vocabulary_item.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class MemoryGameBoardSceneTransitionContentWidget extends StatefulWidget {
  const MemoryGameBoardSceneTransitionContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<MemoryGameBoardSceneTransitionContentWidget> createState() => _MemoryGameBoardSceneTransitionContentWidgetState();
}

class _MemoryGameBoardSceneTransitionContentWidgetState extends State<MemoryGameBoardSceneTransitionContentWidget> {
  bool isCompleted = false;

  int animatedBackgroundWidgetIndex = 1;

  /// -----
  /// TODO:
  /// -----
  VocabularyItem? _currentVocabularyItem;
  VocabularyItem? get getCurrentVocabularyItem => _currentVocabularyItem;
  void setCurrentVocabularyItem({required VocabularyItem? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _currentVocabularyItem = value;
    } else {
      _currentVocabularyItem ??= value;
    }

    return;
  }

  @override
  void initState() {
    super.initState();

    setCurrentVocabularyItem(value: widget.systemStateManagement?.getVocabularyDefinitionFeature?.getVocabularyTime?.getCurrentVocabularyItemForStart, isPriorityOverride: true);

    isShakeY = Random().nextBool();

    leftPositionLayerA01 = -2100.0;
    leftPositionLayerA02 = -1800.0;
    leftPositionLayerA03 = -1450.0;

    rightPositionLayerB01 = -2100.0;
    rightPositionLayerB02 = -1800.0;
    rightPositionLayerB03 = -1450.0;

    final random = Random();
    int number = random.nextInt(15) + 1;
    animatedBackgroundWidgetIndex = number;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        if (widget.systemStateManagement?.getMemoryGameBoardSceneTransitionFeature?.checkConditionActiveByDirection() == true) {
          if (isCompleted == false) {
            isCompleted = true;

            setState(() {
              leftPositionLayerA01 = -2100.0 - 200.0;
              leftPositionLayerA02 = -1800.0 - 400.0;
              leftPositionLayerA03 = -1500.0 - 600.0;

              rightPositionLayerB01 = -2100.0 - 200.0;
              rightPositionLayerB02 = -1800.0 - 400.0;
              rightPositionLayerB03 = -1500.0 - 600.0;

              // return;

              Future.delayed(Duration(seconds: 1), () {
                if (mounted) {
                  if (isShowContentWord == false) {
                    setState(() {
                      isShowContentWord = true;

                      /// Play Sound
                      widget.systemStateManagement?.getMusicAndSound?.onPlaySFXNewVocabularyAppear();
                    });

                    // return;

                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Future.delayed(Duration(seconds: 5), () {
                        setState(() {
                          leftPositionLayerA01 = -2100.0;
                          leftPositionLayerA02 = -1800.0;
                          leftPositionLayerA03 = -1450.0;

                          rightPositionLayerB01 = -2100.0;
                          rightPositionLayerB02 = -1800.0;
                          rightPositionLayerB03 = -1450.0;

                          isShowContentWord = false;
                        });

                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          Future.delayed(Duration(seconds: 1), () {
                            if (mounted) {
                              widget.systemStateManagement?.getMemoryGameBoardSceneTransitionFeature?.onDeactivateWindow();
                              widget.systemStateManagement?.getMemoryGameBoardSceneTransitionFeature?.onDeactivatedWindow?.call();
                            }
                          });
                        });
                      });
                    });
                  }
                }
              });
            });
          }
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
    return ClipRRect(
      borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
      child: Stack(
        alignment: AlignmentDirectional.center,

        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: -2000.0,
            left: -1000.0,
            width: 5000.0,
            height: 5000.0,
            child: Transform.rotate(
              angle: pi * 0.2,
              child: Container(
                width: 5000.0,
                height: 5000.0,
                decoration: BoxDecoration(
                  color: Color(0xFF000000).withValues(alpha: 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                  border: Border.all(width: 15.0, color: Colors.black),
                ),
              ),
            ),
          ),

          Positioned(
            // top: 0,
            // left: 0,
            width: widget.sizeDx * 2,
            height: widget.sizeDx * 2,
            child: Container(
              color: Color(0xFF1C1C1C).withValues(alpha: 0.99),
              child: ShaderMask(
                blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.white,
                      Colors.transparent, // Hoàn toàn biến mất bên phải
                    ],
                    stops: [0.65, 1.0],
                  ).createShader(bounds);
                },
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(color: Color(0xFF1C1C1C).withValues(alpha: 0.1)),
                    animatedBackgroundWidgetIndex == 1 ? const VocabularyTransitionSs01AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 2 ? const VocabularyTransitionSs02AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 3 ? const VocabularyTransitionSs03AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 4 ? const VocabularyTransitionSs04AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 5 ? const VocabularyTransitionSs05AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 6 ? const VocabularyTransitionSs06AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 7 ? const VocabularyTransitionSs07AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 8 ? const VocabularyTransitionSs08AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 9 ? const VocabularyTransitionSs09AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 10 ? const VocabularyTransitionSs10AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 11 ? const VocabularyTransitionSs11AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 12 ? const VocabularyTransitionSs12AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 13 ? const VocabularyTransitionSs13AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 14 ? const VocabularyTransitionSs14AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    animatedBackgroundWidgetIndex == 15 ? const VocabularyTransitionSs15AnimatedBackgroundWidget(sizeDx: 4500.0 * 1.25, sizeDy: 6000.0 * 1.25) : Container(),
                    // Container(color: Color(0xFFFFFFFF).withValues(alpha: 0.05)),
                  ],
                ),
              ),
            ),
          ),

          isShowContentWord
              ? AnimatedPositioned(
                  width: 800.0,
                  height: 400.0,
                  duration: const Duration(milliseconds: 100),
                  child: ElasticIn(
                    duration: const Duration(milliseconds: 500),
                    child: Container(
                      width: 800.0,
                      height: 400.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF).withValues(alpha: 1.0),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(40.0), bottomLeft: Radius.circular(15.0)),
                        border: Border.all(width: 0, color: Color(0xFF1C1C1C)),
                        image: DecorationImage(image: AssetImage('assets/images/background/background_06.jpg'), fit: BoxFit.fitWidth),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          // ClipRRect(
                          //   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(5.0), bottomRight: Radius.circular(30.0), bottomLeft: Radius.circular(5.0)),
                          //   child: Container(
                          //     width: 800.0,
                          //     height: 400.0,
                          //     decoration: BoxDecoration(
                          //       // image: DecorationImage(image: AssetImage('assets/images/background/background_03.jpg'), fit: BoxFit.fitWidth),
                          //     ),
                          //     child: Stack(
                          //       alignment: AlignmentDirectional.center,
                          //       children: [Positioned(top: -150.0, left: -150.0, width: 3000.0, height: 1500.0, child: TransparentEffectWallWidget(sizeDx: 3000.0, sizeDy: 1500.0))],
                          //     ),
                          //   ),
                          // ),
                          AnimatedPositioned(
                            duration: const Duration(milliseconds: 100),

                            child: Container(
                              width: 800.0,
                              height: 150.0,
                              decoration: BoxDecoration(),

                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Container(
                                      color: Colors.transparent,
                                      child: Stack(
                                        alignment: AlignmentDirectional.center,
                                        children: [
                                          Positioned(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    getCurrentVocabularyItem?.getVocabularyDataModel?.getWord ?? '',
                                                    style: GoogleFonts.concertOne(
                                                      textStyle: TextStyle(
                                                        fontSize: 70.0,
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
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Flexible(
                                                  child: Text(
                                                    getCurrentVocabularyItem?.getVocabularyDataModel?.getWord ?? '',
                                                    style: GoogleFonts.concertOne(
                                                      textStyle: TextStyle(fontSize: 70.0, fontWeight: FontWeight.w800, fontStyle: FontStyle.normal, color: Color(0xFFEEEED1), letterSpacing: 10.0),
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
                              color: Color(0xFF00BFFF).withValues(alpha: 1),
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
                              color: Color(0xFFFFFFFF).withValues(alpha: 1.0),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                              border: Border.all(width: 15.0, color: Colors.black),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.8), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  width: 3000.0,
                                  height: 1500.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                                    child: TransparentEffectWallWidget(sizeDx: 3000.0, sizeDy: 1500.0),
                                  ),
                                ),
                              ],
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
                              color: Color(0xFF00BFFF).withValues(alpha: 1),
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
                                      child: ActiveContainerWidget(isReverse: true, color: Color(0xFF00BFFF), width: 5000, height: 1500, numBars: 60),
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
                              color: Color(0xFFFFFFFF).withValues(alpha: 1.0),
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                              border: Border.all(width: 15.0, color: Colors.black),
                              boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  width: 3000.0,
                                  height: 1500.0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
                                    child: TransparentEffectWallWidget(sizeDx: 3000.0, sizeDy: 1500.0),
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

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                border: Border.all(width: 15.0, color: Colors.black),

                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
              ),
            ),
          ),

          // Positioned(
          //   left: 0,
          //   bottom: 10.0,
          //   width: 650.0,
          //   height: 120.0,
          //   child: Container(
          //     width: 650.0,
          //     height: 120.0,
          //     decoration: BoxDecoration(color: Color(0xFF000000).withValues(alpha: 0.8), borderRadius: BorderRadius.circular(0)),
          //   ),
          // ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            left: 15.0,
            bottom: 15.0,
            height: 100.0,
            child: Container(
              width: 500.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFF2C2C2C).withValues(alpha: 0.85),
                border: Border.all(width: 8.0, color: Color(0xFF1C1C1C).withValues(alpha: 0.75)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(30), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(15)),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
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
                                    style: GoogleFonts.poetsenOne(
                                      textStyle: TextStyle(
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        foreground: Paint()
                                          ..style = PaintingStyle.stroke
                                          ..strokeWidth = 2.0
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
                                    'New vocabulary',
                                    style: GoogleFonts.poetsenOne(
                                      textStyle: TextStyle(fontSize: 35.0, fontWeight: FontWeight.w600, fontStyle: FontStyle.normal, color: Color(0xFFFFFFFF), letterSpacing: 5.0),
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
}
