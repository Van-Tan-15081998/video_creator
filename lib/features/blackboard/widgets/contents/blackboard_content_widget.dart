import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';

class BlackboardContentWidget extends StatefulWidget {
  const BlackboardContentWidget({super.key, required this.systemStateManagement, required this.sizeDx, required this.sizeDy});

  /// -----
  /// TODO:
  /// -----
  final SystemStateManagement? systemStateManagement;

  final double sizeDx;
  final double sizeDy;

  @override
  State<BlackboardContentWidget> createState() => _BlackboardContentWidgetState();
}

class _BlackboardContentWidgetState extends State<BlackboardContentWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,

      children: [
        Container(
          padding: EdgeInsets.all(0),
          width: widget.sizeDx,
          height: widget.sizeDy,

          decoration: BoxDecoration(
            color: Color(0xFF002200).withValues(alpha: 0.5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            border: Border.all(width: 15.0, color: Colors.black),
            boxShadow: [
              // Bóng tối (dưới phải)
              // BoxShadow(color: Colors.black.withValues(alpha: 0.5), blurRadius: 15.0, spreadRadius: 1.0, offset: Offset(0, 0)),
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
                    Positioned(
                      child: TransparentEffectWallWidgetLight(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
                    ),
                  ],
                ),
              ),

              // Positioned(
              //   // top: 0,
              //   // left: 0,
              //   width: widget.sizeDx * 2,
              //   height: widget.sizeDx * 2,
              //   child: Container(
              //     color: Color(0xFFFFFFFF).withValues(alpha: 0.99),
              //     child: ShaderMask(
              //       blendMode: BlendMode.dstIn, // Giữ phần gradient trong text
              //       shaderCallback: (Rect bounds) {
              //         return LinearGradient(
              //           begin: Alignment.centerLeft,
              //           end: Alignment.centerRight,
              //           colors: [
              //             Colors.white,
              //             Colors.transparent, // Hoàn toàn biến mất bên phải
              //           ],
              //           stops: [0.25, 1.0],
              //         ).createShader(bounds);
              //       },
              //       child: Stack(
              //         children: [
              //           Container(color: Color(0xFF1C1C1C).withValues(alpha: 0.1)),
              //           GameWidget(
              //             game: AnimatedBackgroundWidget(chieuCaoManHinhPhiVatLy: widget.sizeDy * 2.5, chieuRongManHinhPhiVatLy: widget.sizeDx * 2.5, textRenderer: null, backgroundAnimatedIcon: null, movementUnit: null),
              //           ),
              //           Container(color: Color(0xFFFFFFFF).withValues(alpha: 0.8)),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),

        Container(
          width: widget.sizeDx - 8.0,
          height: widget.sizeDy - 8.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
            border: Border.all(width: 10.0, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
