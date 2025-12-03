import 'dart:async';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/animation_components/active_container/active_container_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:google_fonts/google_fonts.dart';

class SceneTransitionContentWidget extends StatefulWidget {
  const SceneTransitionContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy, required this.onComplete});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  final VoidCallback? onComplete;

  @override
  State<SceneTransitionContentWidget> createState() => _SceneTransitionContentWidgetState();
}

class _SceneTransitionContentWidgetState extends State<SceneTransitionContentWidget> {
  bool isFullScreen = false;

  bool isCompleted = false;

  @override
  void initState() {
    super.initState();

    isShakeY = Random().nextBool();

    if (isFullScreen == true) {
      leftPositionLayerA01 = -2000.0;
      leftPositionLayerA02 = -1500.0;
      leftPositionLayerA03 = -1000.0;

      rightPositionLayerB01 = -2000.0;
      rightPositionLayerB02 = -1500.0;
      rightPositionLayerB03 = -1000.0;
    } else {
      leftPositionLayerA01 = -2100.0;
      leftPositionLayerA02 = -1800.0;
      leftPositionLayerA03 = -1450.0;

      rightPositionLayerB01 = -2100.0;
      rightPositionLayerB02 = -1800.0;
      rightPositionLayerB03 = -1450.0;
    }

    // return;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(Duration(seconds: 1), (timer) {
        if (isCompleted == false) {
          isCompleted = true;

          setState(() {
            if (isFullScreen == true) {
              leftPositionLayerA01 -= 200.0;
              leftPositionLayerA02 -= 400.0;
              leftPositionLayerA03 -= 600.0;

              rightPositionLayerB01 -= 400.0;
              rightPositionLayerB02 -= 600.0;
              rightPositionLayerB03 -= 800.0;
            } else {
              leftPositionLayerA01 -= 200.0;
              leftPositionLayerA02 -= 400.0;
              leftPositionLayerA03 -= 600.0;

              rightPositionLayerB01 -= 200.0;
              rightPositionLayerB02 -= 400.0;
              rightPositionLayerB03 -= 600.0;
            }

            // return;

            Future.delayed(Duration(seconds: 1), () {
              if (mounted) {
                if (isShowContentWord == false) {
                  setState(() {
                    isShowContentWord = true;
                  });

                  // return;

                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Future.delayed(Duration(seconds: 5), () {
                      setState(() {
                        if (isFullScreen == true) {
                          leftPositionLayerA01 = -2000.0;
                          leftPositionLayerA02 = -1500.0;
                          leftPositionLayerA03 = -1000.0;

                          rightPositionLayerB01 = -2000.0;
                          rightPositionLayerB02 = -1500.0;
                          rightPositionLayerB03 = -1000.0;
                        } else {
                          leftPositionLayerA01 = -2100.0;
                          leftPositionLayerA02 = -1800.0;
                          leftPositionLayerA03 = -1450.0;

                          rightPositionLayerB01 = -2100.0;
                          rightPositionLayerB02 = -1800.0;
                          rightPositionLayerB03 = -1450.0;
                        }

                        isShowContentWord = false;
                      });

                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        Future.delayed(Duration(seconds: 1), () {
                          if (mounted) {
                            widget.onComplete?.call();

                            widget.systemStateManagement?.getSceneTransitionFeature?.onDeactivatedWindow?.call();
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
    return isFullScreen
        ? Stack(
            alignment: AlignmentDirectional.center,

            children: [
              Positioned(
                top: 0,
                left: 0,
                width: widget.sizeDx,
                height: widget.sizeDy,
                child: Container(
                  padding: EdgeInsets.all(0),
                  width: widget.sizeDx,
                  height: widget.sizeDy,

                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF).withValues(alpha: 0.9),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomRight: Radius.circular(0), bottomLeft: Radius.circular(0)),
                    border: Border.all(width: 15.0, color: Colors.black),
                    boxShadow: [
                      // Bóng tối (dưới phải)
                      BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0)),
                    ],
                  ),
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
                                    color: Color(0xFFFFFFFF).withValues(alpha: 1.0),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
                                    border: Border.all(width: 15.0, color: Colors.black),
                                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
                                  ),
                                ),
                              ),
                            ),

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
                                    color: Color(0xFF00BFFF).withValues(alpha: 0.6),
                                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0), blurRadius: 10.0, spreadRadius: 1.0, offset: Offset(0, 0))],
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
                                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
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
                                    color: Color(0xFF00EE00).withValues(alpha: 1.0),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
                                    border: Border.all(width: 15.0, color: Colors.black),
                                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
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
                                    color: Color(0xFF00BFFF).withValues(alpha: 0.4),
                                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0), blurRadius: 10.0, spreadRadius: 1.0, offset: Offset(0, 0))],
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
                                    color: Color(0xFF000000).withValues(alpha: 0.6),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
                                    boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0))],
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
                                    color: Color(0xFF00EE00).withValues(alpha: 0.8),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15.0),
                                      topRight: Radius.circular(15.0),
                                      bottomRight: Radius.circular(15.0),
                                      bottomLeft: Radius.circular(15.0),
                                    ),
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
              ),

              isShowContentWord
                  ? AnimatedPositioned(
                      left: 900.0,
                      width: 1000.0,
                      height: 250.0,
                      duration: const Duration(milliseconds: 100),
                      child: FadeIn(
                        duration: const Duration(milliseconds: 1200),
                        child: Container(
                          width: 1000.0,
                          height: 250.0,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(18.0),
                            border: Border.all(width: 10.0, color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  : Container(),

              Container(
                width: widget.sizeDx - 8.0,
                height: widget.sizeDy - 8.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18.0),
                  border: Border.all(width: 10.0, color: Colors.black),
                ),
              ),
            ],
          )
        :
          /// TODO:
          /// TODO:
          /// TODO:
          /// TODO:
          /// TODO:
          Stack(
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
                      color: Color(0xFF000000).withValues(alpha: 0.5),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
                      border: Border.all(width: 15.0, color: Colors.black),
                    ),
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
                                  width: widget.sizeDx * 0.6,
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
                width: widget.sizeDx * 0.6 + 15.0,
                height: widget.sizeDy,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      width: widget.sizeDx * 0.6 + 15.0,
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
                                  color: Color(0xFFFF7F24).withValues(alpha: 1.0),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                  ),
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
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                  ),
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
                                  color: Color(0xFFFF7F24).withValues(alpha: 1.0),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                    bottomLeft: Radius.circular(15.0),
                                  ),
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
                width: widget.sizeDx * 0.6 + 15.0,
                height: widget.sizeDy,
                child: Container(
                  width: widget.sizeDx * 0.6,
                  height: widget.sizeDy,
                  decoration: BoxDecoration(border: Border.all(width: 15.0, color: Colors.black)),
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
                  width: widget.sizeDx * 0.6,
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
                                        'New vocabulary',
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
                                        'New vocabulary',
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
          );
  }
}
