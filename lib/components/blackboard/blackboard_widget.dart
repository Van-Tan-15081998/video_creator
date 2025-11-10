import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackboardWidget extends StatefulWidget {
  const BlackboardWidget({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<BlackboardWidget> createState() => _BlackboardWidgetState();
}

class _BlackboardWidgetState extends State<BlackboardWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: widget.sizeDx,
      height: widget.sizeDy,
      // decoration: BoxDecoration(
      //   color: Color(0xFF002200),
      //   border: Border.all(width: 2.0, color: Colors.black),
      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
      // ),
      decoration: BoxDecoration(
        color: Color(0xFF002200),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 10.0, color: Colors.black),
        boxShadow: [
          // Bóng tối (dưới phải)
          BoxShadow(color: Colors.black.withValues(alpha: 0.8), offset: Offset(1, 1), blurRadius: 2),
        ],
      ),
      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 100),
            top: 10.0,
            left: 10.0,
            child: Container(
              width: widget.sizeDx,
              height: widget.sizeDy,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Center(
                child: Text(
                  'bảng viết',
                  style: GoogleFonts.comfortaa(textStyle: const TextStyle(color: Color(0xFFECECEC)), fontSize: 25.0),
                ),
              ),
            ),
          ),
        ],
      ),
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
