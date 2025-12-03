import 'package:flutter/material.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.sequentialExecutionController});

  final SequentialExecutionController? sequentialExecutionController;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isWindowWidgetFullHeight = false;

  @override
  void initState() {
    super.initState();

    isWindowWidgetFullHeight = true;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        widget.sequentialExecutionController?.setSizeDx(value: constraints.maxWidth, isPriorityOverride: true);
        widget.sequentialExecutionController?.setSizeDy(value: constraints.maxHeight, isPriorityOverride: true);

        return widget.sequentialExecutionController?.getWindowWidget ?? Container();
      },
    );

    // LayoutBuilder(
    //   builder: (context, constraints) {
    //     return Stack(
    //       children: [
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           top: 0,
    //           left: 0,
    //           width: constraints.maxWidth,
    //           height: constraints.maxHeight,
    //           child: SystemTimelineWidget(systemStateManagement: widget.systemStateManagement, sizeDx: 0, sizeDy: 0),
    //         ),
    //
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           top: 0,
    //           left: 0,
    //           width: constraints.maxWidth,
    //           height: constraints.maxHeight,
    //           child: Container(
    //             decoration: BoxDecoration(
    //               image: DecorationImage(image: AssetImage('assets/images/landscape4.jpg'), fit: BoxFit.fill),
    //             ),
    //           ),
    //         ),
    //
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           top: 15,
    //           left: 15,
    //           width: constraints.maxWidth,
    //           height: constraints.maxHeight,
    //           child: Stack(
    //             alignment: AlignmentDirectional.center,
    //             children: [Positioned(child: AnimatedBlocksBackground())],
    //           ),
    //         ),
    //
    //         isWindowWidgetFullHeight
    //             ? AnimatedPositioned(
    //                 duration: const Duration(milliseconds: 100),
    //                 top: 15,
    //                 left: 15,
    //                 width: constraints.maxWidth * 0.6,
    //                 height: constraints.maxHeight * 1.0 - 30.0,
    //                 child: Stack(
    //                   alignment: AlignmentDirectional.center,
    //                   children: [
    //                     Positioned(
    //                       child: WindowWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 1.0 - 30.0),
    //                     ),
    //                   ],
    //                 ),
    //               )
    //             : AnimatedPositioned(
    //                 duration: const Duration(milliseconds: 100),
    //                 top: 15,
    //                 left: 15,
    //                 width: constraints.maxWidth * 0.6,
    //                 height: constraints.maxHeight * 0.6,
    //                 child: Stack(
    //                   alignment: AlignmentDirectional.center,
    //                   children: [
    //                     Positioned(
    //                       child: WindowWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           top: 15,
    //           left: 15,
    //           width: constraints.maxWidth * 0.6,
    //           height: constraints.maxHeight * 0.6,
    //           child: Stack(
    //             alignment: AlignmentDirectional.center,
    //             children: [
    //               Positioned(
    //                 child: FlameWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
    //               ),
    //             ],
    //           ),
    //         ),
    //
    //         // Positioned(
    //         //   top: 15,
    //         //   left: 15,
    //         //   width: constraints.maxWidth * 0.6,
    //         //   height: constraints.maxHeight * 0.6,
    //         //   child: Stack(
    //         //     alignment: AlignmentDirectional.center,
    //         //     children: [
    //         //       Positioned(
    //         //         child: ExampleSentenceWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight * 0.6),
    //         //       ),
    //         //     ],
    //         //   ),
    //         // ),
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           top: 15,
    //           right: 15,
    //           width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
    //           height: constraints.maxHeight * 0.4,
    //           child: Stack(
    //             alignment: AlignmentDirectional.center,
    //             children: [
    //               Positioned(
    //                 child: BlackboardWidget(
    //                 sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
    //                 sizeDy: constraints.maxHeight * 0.4),
    //               ),
    //             ],
    //           ),
    //         ),
    //
    //         // Positioned(
    //         //   top: 15,
    //         //   right: 15,
    //         //   width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
    //         //   height: constraints.maxHeight * 0.4,
    //         //   child: Stack(
    //         //     alignment: AlignmentDirectional.center,
    //         //     children: [
    //         //       Positioned(
    //         //         child: WaterReminderWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.4),
    //         //       ),
    //         //     ],
    //         //   ),
    //         // ),
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           top: 15 + constraints.maxHeight * 0.4 + 15,
    //           right: 15,
    //           width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
    //           height: constraints.maxHeight * 0.6 - (constraints.maxHeight * 0.4 + 15),
    //           child: Stack(
    //             alignment: AlignmentDirectional.center,
    //             children: [CountdownTimerWidget(sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45), sizeDy: constraints.maxHeight * 0.6 - (constraints.maxHeight * 0.4 + 15))],
    //           ),
    //         ),
    //
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           bottom: 15,
    //           right: 15,
    //           width: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
    //           height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
    //           child: Stack(
    //             alignment: AlignmentDirectional.center,
    //             children: [
    //               Positioned(
    //                 child: PomodoroWidget(
    //                   systemStateManagement: widget.systemStateManagement,
    //                   sizeDx: constraints.maxWidth - (constraints.maxWidth * 0.6 + 45),
    //                   sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //
    //         // Positioned(
    //         //   bottom: 15,
    //         //   left: 15,
    //         //   width: constraints.maxWidth * 0.6,
    //         //   height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
    //         //   child: Stack(
    //         //     alignment: AlignmentDirectional.center,
    //         //     children: [VocabularyWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
    //         //   ),
    //         // ),
    //         isWindowWidgetFullHeight
    //             ? AnimatedPositioned(
    //                 duration: const Duration(milliseconds: 100),
    //                 bottom: (constraints.maxHeight - (constraints.maxHeight * 0.6 + 45)) * (-1),
    //                 left: 15,
    //                 width: constraints.maxWidth * 0.6,
    //                 height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
    //                 child: Stack(
    //                   alignment: AlignmentDirectional.center,
    //                   children: [VocabularyByTopicWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
    //                 ),
    //               )
    //             : AnimatedPositioned(
    //                 duration: const Duration(milliseconds: 100),
    //                 bottom: 15,
    //                 left: 15,
    //                 width: constraints.maxWidth * 0.6,
    //                 height: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45),
    //                 child: Stack(
    //                   alignment: AlignmentDirectional.center,
    //                   children: [VocabularyByTopicWidget(sizeDx: constraints.maxWidth * 0.6, sizeDy: constraints.maxHeight - (constraints.maxHeight * 0.6 + 45))],
    //                 ),
    //               ),
    //
    //         AnimatedPositioned(
    //           duration: const Duration(milliseconds: 100),
    //           bottom: 0,
    //           left: 0,
    //           width: constraints.maxWidth,
    //           height: constraints.maxHeight,
    //           child: GlobalAnnouncementWidget(sizeDx: constraints.maxWidth, sizeDy: constraints.maxHeight),
    //         ),
    //       ],
    //     );
    //   },
    //   // ),
    // );
  }
}
