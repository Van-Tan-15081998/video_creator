import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frame_creator_v2/component_for_test/demo_animated_background.dart';
import 'package:frame_creator_v2/component_for_test/demo_animated_background_2.dart';
import 'package:frame_creator_v2/component_for_test/flip_card.dart';
import 'package:frame_creator_v2/components/blackboard/blackboard_widget.dart';
import 'package:frame_creator_v2/components/countdown_timer/countdown_timer_widget.dart';
import 'package:frame_creator_v2/components/example_sentence/example_sentence_widget.dart';
import 'package:frame_creator_v2/components/flame/fame_widget.dart';
import 'package:frame_creator_v2/components/pomodoro/pomodoro_widget.dart';
import 'package:frame_creator_v2/components/vocabulary/vocabulary_by_topic_widget.dart';
import 'package:frame_creator_v2/components/vocabulary/vocabulary_widget.dart';
import 'package:frame_creator_v2/components/water_reminder/water_reminder_widget.dart';
import 'package:frame_creator_v2/components/window/window_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class LayoutDemo extends StatefulWidget {
  const LayoutDemo({super.key});

  @override
  State<LayoutDemo> createState() => _LayoutDemoState();
}

class _LayoutDemoState extends State<LayoutDemo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/landscape.jpg'), fit: BoxFit.fill),
                ),
              ),
            ),

            Positioned(
              top: 15,
              left: 15,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [Positioned(child: AnimatedBlocksBackground())],
              ),
            ),

            Positioned(
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

            Positioned(
              top: 15,
              left: 15,
              width: constraints.maxWidth * 0.6,
              height: constraints.maxHeight * 0.6,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: FameWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 15,
              left: 15,
              width: constraints.maxWidth * 0.6,
              height: constraints.maxHeight * 0.6,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: ExampleSentenceWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
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
            //         child: BlackboardWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.4),
            //       ),
            //     ],
            //   ),
            // ),
            Positioned(
              top: 15,
              right: 15,
              width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
              height: constraints.maxHeight * 0.4,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: WaterReminderWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.4),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 15 + constraints.maxHeight * 0.4 + 15,
              right: 15,
              width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
              height: constraints.maxHeight * 0.6 - (constraints.maxHeight * 0.4 + 15),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CountdownTimerWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.6 - (constraints.maxHeight * 0.4 + 15)),
                ],
              ),
            ),

            Positioned(
              bottom: 15,
              right: 15,
              width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
              height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Positioned(
                    child: PomodoroWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45)),
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
            Positioned(
              bottom: 15,
              left: 15,
              width: constraints.maxWidth * 0.6,
              height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [VocabularyByTopicWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
              ),
            ),
          ],
        );
      },
    );
  }
}
