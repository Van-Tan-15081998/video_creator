import 'package:flutter/material.dart';
import 'package:frame_creator_v2/component_for_test/demo_animated_background.dart';
import 'package:frame_creator_v2/components/blackboard/blackboard_widget.dart';
import 'package:frame_creator_v2/components/countdown_timer/countdown_timer_widget.dart';
import 'package:frame_creator_v2/components/flame/flame_widget.dart';
import 'package:frame_creator_v2/components/global_announcement/global_announcement_widget.dart';
import 'package:frame_creator_v2/components/pomodoro/pomodoro_widget.dart';
import 'package:frame_creator_v2/components/system_timeline/system_timeline_widget.dart';
import 'package:frame_creator_v2/components/vocabulary/vocabulary_by_topic_widget.dart';
import 'package:frame_creator_v2/components/window/window_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({super.key, required this.systemStateManagement});

  final SystemStateManagement? systemStateManagement;

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  bool isWindowWidgetFullHeight = false;

  @override
  void initState() {
    super.initState();

    isWindowWidgetFullHeight = true;
  }

  @override
  Widget build(BuildContext context) {
    return
    // Transform(
    // alignment: Alignment.centerRight,
    // transform: Matrix4.identity()
    //   ..setEntry(3, 2, 0.001) // tạo chiều sâu
    //   ..rotateY(15 * (pi / 180)), // radian, 1.57 = 90 độ,
    // child:
    LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              top: 0,
              left: 0,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: SystemTimelineWidget0(systemStateManagement: widget.systemStateManagement, sizeDx: 0, sizeDy: 0),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              top: 0,
              left: 0,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/landscape4.jpg'), fit: BoxFit.fill),
                ),
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              top: 15,
              left: 15,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [Positioned(child: AnimatedBlocksBackground())],
              ),
            ),

            isWindowWidgetFullHeight
                ? AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    top: 15,
                    left: 15,
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight * 1.0 - 30.0,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                          child: WindowWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 1.0 - 30.0),
                        ),
                      ],
                    ),
                  )
                : AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    top: 15,
                    left: 15,
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight * 0.6,
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Positioned(
                          child: WindowWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
                        ),
                      ],
                    ),
                  ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              top: 15,
              left: 15,
              width: constraints.maxWidth * 0.6,
              height: constraints.maxHeight * 0.6,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: FlameWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
                  ),
                ],
              ),
            ),

            // Positioned(
            //   top: 15,
            //   left: 15,
            //   width: constraints.maxWidth * 0.6,
            //   height: constraints.maxHeight * 0.6,
            //   child: Stack(
            //     alignment: AlignmentDirectional.center,
            //     children: [
            //       Positioned(
            //         child: ExampleSentenceWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
            //       ),
            //     ],
            //   ),
            // ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              top: 15,
              right: 15,
              width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
              height: constraints.maxHeight * 0.4,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: BlackboardWidget0(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.4),
                  ),
                ],
              ),
            ),

            // Positioned(
            //   top: 15,
            //   right: 15,
            //   width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
            //   height: constraints.maxHeight * 0.4,
            //   child: Stack(
            //     alignment: AlignmentDirectional.center,
            //     children: [
            //       Positioned(
            //         child: WaterReminderWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.4),
            //       ),
            //     ],
            //   ),
            // ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              top: 15 + constraints.maxHeight * 0.4 + 15,
              right: 15,
              width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
              height: constraints.maxHeight * 0.6 - (constraints.maxHeight * 0.4 + 15),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [CountdownTimerWidget0(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.6 - (constraints.maxHeight * 0.4 + 15))],
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              bottom: 15,
              right: 15,
              width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
              height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: PomodoroWidget0(
                      systemStateManagement: widget.systemStateManagement,
                      sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
                      sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
                    ),
                  ),
                ],
              ),
            ),

            // Positioned(
            //   bottom: 15,
            //   left: 15,
            //   width: constraints.maxWidth * 0.6,
            //   height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
            //   child: Stack(
            //     alignment: AlignmentDirectional.center,
            //     children: [VocabularyWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
            //   ),
            // ),
            isWindowWidgetFullHeight
                ? AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    bottom: (constraints.maxHeight - (constraints.maxHeight * 0.6 + 45)) * (-1),
                    left: 15,
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [VocabularyByTopicWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
                    ),
                  )
                : AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    bottom: 15,
                    left: 15,
                    width: constraints.maxWidth * 0.6,
                    height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [VocabularyByTopicWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
                    ),
                  ),

            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              bottom: 0,
              left: 0,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: GlobalAnnouncementWidget0(sizeDx: constraints.maxWidth, sizeDy: constraints.maxHeight),
            ),
          ],
        );
      },
      // ),
    );
  }
}
