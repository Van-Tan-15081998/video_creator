import 'package:flutter/material.dart';
import 'package:frame_creator_v2/components/subject/subject_widget.dart';
import 'package:frame_creator_v2/components/transparent_effect_wall/transparent_effect_wall_widget_light.dart';
import 'package:frame_creator_v2/components/window/word_information_component/word_sub_information_widget.dart';

class BlackboardWidget0 extends StatefulWidget {
  const BlackboardWidget0({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<BlackboardWidget0> createState() => _BlackboardWidgetState();
}

class _BlackboardWidgetState extends State<BlackboardWidget0> {
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
          // decoration: BoxDecoration(
          //   color: Color(0xFF002200),
          //   border: Border.all(width: 2.0, color: Colors.black),
          //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
          // ),
          decoration: BoxDecoration(
            color: Color(0xFF002200).withValues(alpha: 0.5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(30.0), bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
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
                    Positioned(
                      child: TransparentEffectWallWidgetLight(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
                    ),
                  ],
                ),
              ),

              // AnimatedPositioned(
              //   duration: const Duration(milliseconds: 100),
              //   top: 10.0,
              //   left: 10.0,
              //   child: Container(
              //     width: widget.sizeDx,
              //     height: widget.sizeDy,
              //     decoration: BoxDecoration(color: Colors.transparent),
              //     child: Center(
              //       child: Text(
              //         'Bạn đang thiết kế hình ảnh, ấn phẩm quảng cáo và cần tra bảng màu chuẩn theo các hệ màu? Bảng tổng hợp mã màu sau đây sẽ giúp bạn thiết kế đồ hoạ hoặc làm trang web chuẩn màu hơn nhờ việc sử dụng các mã màu tương ứng.',
              //         style: GoogleFonts.comfortaa(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 25.0),
              //       ),
              //     ),
              //   ),
              // ),
              false ? WordSubInformationWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy) : Container(),

              SubjectWidget(sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
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

  // GoogleFonts.comfortaa
  // GoogleFonts.teko
  // GoogleFonts.bungee
  // GoogleFonts.bangers
  // GoogleFonts.varelaRound
  // GoogleFonts.chewy
  //
  // Row(
  // mainAxisSize: MainAxisSize.max,
  // mainAxisAlignment: phanGiaiMainAxisAlignment(canhLe: widget.canhLeVanBan),
  // children: [
  // Flexible(
  // child: Container(
  // color: Colors.transparent,
  // child: Stack(
  // children: [
  // Positioned(
  // child: Row(
  // mainAxisSize: MainAxisSize.min,
  // children: [
  // Flexible(
  // child: Text(
  // widget.vanBan ?? 'VAN_BAN',
  // style: GoogleFonts.chewy(
  // textStyle: TextStyle(
  // fontSize: widget.kichThuocPhongChu ?? 10.0,
  // fontWeight: widget.doDayPhongChu ?? FontWeight.normal,
  // fontStyle: FontStyle.normal,
  // foreground: Paint()
  // ..style = PaintingStyle.stroke
  // ..strokeWidth = 2.0
  // ..color = mauSacKhungVien ?? Colors.black, // Màu viền
  // ),
  // ),
  // textAlign: phanGiaiTextAlign(),
  // overflow: TextOverflow.ellipsis,
  // maxLines: widget.soDongToiDa ?? 1,
  // ),
  // ),
  // ],
  // ),
  // ),
  // Positioned(
  // child: Row(
  // mainAxisSize: MainAxisSize.min,
  // children: [
  // Flexible(
  // child: Text(
  // widget.vanBan ?? 'VAN_BAN',
  // style: GoogleFonts.chewy(
  // textStyle: TextStyle(
  // fontSize: widget.kichThuocPhongChu ?? 10.0,
  // fontWeight: widget.doDayPhongChu ?? FontWeight.normal,
  // fontStyle: FontStyle.normal,
  // color: mauSacKhungNen ?? Colors.black,
  // )),
  // textAlign: phanGiaiTextAlign(),
  // overflow: TextOverflow.ellipsis,
  // maxLines: widget.soDongToiDa ?? 1,
  // ),
  // ),
  // ],
  // ),
  // ),
  // ],
  // ),
  // ),
  // ),
  // ],
  // ),
}
