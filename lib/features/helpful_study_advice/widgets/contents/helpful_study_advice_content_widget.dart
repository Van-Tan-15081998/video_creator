import 'package:flutter/material.dart';
import 'package:frame_creator_v2/features/helpful_study_advice/widgets/contents/helpful_study_advice_detail_widget.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class HelpfulStudyAdviceContentWidget extends StatefulWidget {
  const HelpfulStudyAdviceContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<HelpfulStudyAdviceContentWidget> createState() => _HelpfulStudyAdviceContentWidgetState();
}

class _HelpfulStudyAdviceContentWidgetState extends State<HelpfulStudyAdviceContentWidget> {
  bool isExampleSentencePhrase = false;
  bool isCommunicationPhrase = false;

  @override
  void initState() {
    super.initState();

    isExampleSentencePhrase = false;
    isCommunicationPhrase = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.sizeDx,
      height: widget.sizeDy,
      decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(20.0)), boxShadow: []),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          // ClipRRect(
          //   borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
          //   child: TransparentEffectWallWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
          // ),
          HelpfulStudyAdviceDetailWidget(systemStateManagement: widget.systemStateManagement, sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),

          Positioned(
            top: 0,
            left: 0,
            width: widget.sizeDx,
            height: widget.sizeDy,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 5.0, color: Colors.black),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(30.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
