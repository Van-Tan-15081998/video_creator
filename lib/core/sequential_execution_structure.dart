import 'dart:async' as flutter_async;
import 'dart:collection';

import 'package:frame_creator_v2/core/cau_truc_thuc_thi_co_ban.dart';
import 'package:frame_creator_v2/core/execution_unit.dart';

/// -----
/// TODO: Cấu Trúc Thực Thi Tuần Tự
/// -----
class SequentialExecutionStructure with ExecutionCore {
  SequentialExecutionStructure.onMacDinh() {
    ///
  }

  SequentialExecutionStructure({
    Future<void> Function()? onThucThiTuanTuSS010, //
    Future<void> Function()? onThucThiTuanTuSS020, //
    Future<void> Function()? onThucThiTuanTuSS030, //
    Future<void> Function()? onThucThiTuanTuSS040, //
    Future<void> Function()? onThucThiTuanTuSS050, //
    Future<void> Function()? onThucThiTuanTuSS060, //
    Future<void> Function()? onThucThiTuanTuSS070, //
    Future<void> Function()? onThucThiTuanTuSS080, //
    Future<void> Function()? onThucThiTuanTuSS090, //
    Future<void> Function()? onThucThiTuanTuSS100, //

    Future<void> Function()? onThucThiTuanTuSS110, //
    Future<void> Function()? onThucThiTuanTuSS120, //
    Future<void> Function()? onThucThiTuanTuSS130, //
    Future<void> Function()? onThucThiTuanTuSS140, //
    Future<void> Function()? onThucThiTuanTuSS150, //
    Future<void> Function()? onThucThiTuanTuSS160, //
    Future<void> Function()? onThucThiTuanTuSS170, //
    Future<void> Function()? onThucThiTuanTuSS180, //
    Future<void> Function()? onThucThiTuanTuSS190, //
    Future<void> Function()? onThucThiTuanTuSS200, //

    Future<void> Function()? onThucThiTuanTuSS210, //
    Future<void> Function()? onThucThiTuanTuSS220, //
    Future<void> Function()? onThucThiTuanTuSS230, //
    Future<void> Function()? onThucThiTuanTuSS240, //
    Future<void> Function()? onThucThiTuanTuSS250, //
    Future<void> Function()? onThucThiTuanTuSS260, //
    Future<void> Function()? onThucThiTuanTuSS270, //
    Future<void> Function()? onThucThiTuanTuSS280, //
    Future<void> Function()? onThucThiTuanTuSS290, //
    Future<void> Function()? onThucThiTuanTuSS300, //

    Future<void> Function()? onThucThiTuanTuSS310, //
    Future<void> Function()? onThucThiTuanTuSS320, //
    Future<void> Function()? onThucThiTuanTuSS330, //
    Future<void> Function()? onThucThiTuanTuSS340, //
    Future<void> Function()? onThucThiTuanTuSS350, //
    Future<void> Function()? onThucThiTuanTuSS360, //
    Future<void> Function()? onThucThiTuanTuSS370, //
    Future<void> Function()? onThucThiTuanTuSS380, //
    Future<void> Function()? onThucThiTuanTuSS390, //
    Future<void> Function()? onThucThiTuanTuSS400, //

    Future<void> Function()? onThucThiTuanTuSS410, //
    Future<void> Function()? onThucThiTuanTuSS420, //
    Future<void> Function()? onThucThiTuanTuSS430, //
    Future<void> Function()? onThucThiTuanTuSS440, //
    Future<void> Function()? onThucThiTuanTuSS450, //
    Future<void> Function()? onThucThiTuanTuSS460, //
    Future<void> Function()? onThucThiTuanTuSS470, //
    Future<void> Function()? onThucThiTuanTuSS480, //
    Future<void> Function()? onThucThiTuanTuSS490, //
    Future<void> Function()? onThucThiTuanTuSS500, //
    required this.onThucThiHoanTat,
  }) {
    /// -----
    /// TODO: 1 - 10
    /// -----
    if (onThucThiTuanTuSS010 != null) {
      onVoidCaiDatDonViThucThiSS010(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS010,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS010?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS010) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS010);
            }
          },
        ),
        setUuTien: true,
      );

      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS010);
    }
    if (onThucThiTuanTuSS020 != null) {
      onVoidCaiDatDonViThucThiSS020(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS020,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS020?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS020) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS020);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS020);
    }
    if (onThucThiTuanTuSS030 != null) {
      onVoidCaiDatDonViThucThiSS030(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS030,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS030?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS030) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS030);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS030);
    }
    if (onThucThiTuanTuSS040 != null) {
      onVoidCaiDatDonViThucThiSS040(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS040,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS040?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS040) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS040);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS040);
    }
    if (onThucThiTuanTuSS050 != null) {
      onVoidCaiDatDonViThucThiSS050(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS050,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS050?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS050) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS050);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS050);
    }
    if (onThucThiTuanTuSS060 != null) {
      onVoidCaiDatDonViThucThiSS060(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS060,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS060?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS060) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS060);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS060);
    }
    if (onThucThiTuanTuSS070 != null) {
      onVoidCaiDatDonViThucThiSS070(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS070,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS070?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS070) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS070);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS070);
    }
    if (onThucThiTuanTuSS080 != null) {
      onVoidCaiDatDonViThucThiSS080(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS080,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS080?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS080) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS080);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS080);
    }
    if (onThucThiTuanTuSS090 != null) {
      onVoidCaiDatDonViThucThiSS090(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS090,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS090?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS090) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS090);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS090);
    }
    if (onThucThiTuanTuSS100 != null) {
      onVoidCaiDatDonViThucThiSS100(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS100,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS100?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS100) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS100);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS100);
    }

    /// -----
    /// TODO: 11 - 20
    /// -----
    if (onThucThiTuanTuSS110 != null) {
      onVoidCaiDatDonViThucThiSS110(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS110,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS110?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS110) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS110);
            }
          },
        ),
        setUuTien: true,
      );

      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS110);
    }
    if (onThucThiTuanTuSS120 != null) {
      onVoidCaiDatDonViThucThiSS120(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS120,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS120?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS120) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS120);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS120);
    }
    if (onThucThiTuanTuSS130 != null) {
      onVoidCaiDatDonViThucThiSS130(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS130,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS130?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS130) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS130);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS130);
    }
    if (onThucThiTuanTuSS140 != null) {
      onVoidCaiDatDonViThucThiSS140(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS140,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS140?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS140) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS140);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS140);
    }
    if (onThucThiTuanTuSS150 != null) {
      onVoidCaiDatDonViThucThiSS150(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS150,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS150?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS150) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS150);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS150);
    }
    if (onThucThiTuanTuSS160 != null) {
      onVoidCaiDatDonViThucThiSS160(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS160,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS160?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS160) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS160);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS160);
    }
    if (onThucThiTuanTuSS170 != null) {
      onVoidCaiDatDonViThucThiSS170(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS170,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS170?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS170) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS170);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS170);
    }
    if (onThucThiTuanTuSS180 != null) {
      onVoidCaiDatDonViThucThiSS180(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS180,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS180?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS180) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS180);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS180);
    }
    if (onThucThiTuanTuSS190 != null) {
      onVoidCaiDatDonViThucThiSS190(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS190,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS190?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS190) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS190);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS190);
    }
    if (onThucThiTuanTuSS200 != null) {
      onVoidCaiDatDonViThucThiSS200(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS200,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS200?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS200) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS200);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS200);
    }

    /// -----
    /// TODO: 21 - 30
    /// -----
    if (onThucThiTuanTuSS210 != null) {
      onVoidCaiDatDonViThucThiSS210(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS210,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS210?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS210) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS210);
            }
          },
        ),
        setUuTien: true,
      );

      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS210);
    }
    if (onThucThiTuanTuSS220 != null) {
      onVoidCaiDatDonViThucThiSS220(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS220,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS220?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS220) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS220);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS220);
    }
    if (onThucThiTuanTuSS230 != null) {
      onVoidCaiDatDonViThucThiSS230(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS230,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS230?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS230) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS230);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS230);
    }
    if (onThucThiTuanTuSS240 != null) {
      onVoidCaiDatDonViThucThiSS240(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS240,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS240?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS240) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS240);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS240);
    }
    if (onThucThiTuanTuSS250 != null) {
      onVoidCaiDatDonViThucThiSS250(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS250,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS250?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS250) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS250);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS250);
    }
    if (onThucThiTuanTuSS260 != null) {
      onVoidCaiDatDonViThucThiSS260(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS260,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS260?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS260) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS260);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS260);
    }
    if (onThucThiTuanTuSS270 != null) {
      onVoidCaiDatDonViThucThiSS270(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS270,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS270?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS270) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS270);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS270);
    }
    if (onThucThiTuanTuSS280 != null) {
      onVoidCaiDatDonViThucThiSS280(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS280,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS280?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS280) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS280);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS280);
    }
    if (onThucThiTuanTuSS290 != null) {
      onVoidCaiDatDonViThucThiSS290(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS290,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS290?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS290) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS290);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS290);
    }
    if (onThucThiTuanTuSS300 != null) {
      onVoidCaiDatDonViThucThiSS300(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS300,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS300?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS300) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS300);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS300);
    }

    /// -----
    /// TODO: 31 - 40
    /// -----
    if (onThucThiTuanTuSS310 != null) {
      onVoidCaiDatDonViThucThiSS310(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS310,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS310?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS310) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS310);
            }
          },
        ),
        setUuTien: true,
      );

      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS310);
    }
    if (onThucThiTuanTuSS320 != null) {
      onVoidCaiDatDonViThucThiSS320(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS320,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS320?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS320) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS320);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS320);
    }
    if (onThucThiTuanTuSS330 != null) {
      onVoidCaiDatDonViThucThiSS330(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS330,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS330?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS330) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS330);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS330);
    }
    if (onThucThiTuanTuSS340 != null) {
      onVoidCaiDatDonViThucThiSS340(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS340,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS340?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS340) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS340);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS340);
    }
    if (onThucThiTuanTuSS350 != null) {
      onVoidCaiDatDonViThucThiSS350(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS350,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS350?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS350) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS350);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS350);
    }
    if (onThucThiTuanTuSS360 != null) {
      onVoidCaiDatDonViThucThiSS360(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS360,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS360?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS360) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS360);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS360);
    }
    if (onThucThiTuanTuSS370 != null) {
      onVoidCaiDatDonViThucThiSS370(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS370,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS370?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS370) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS370);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS370);
    }
    if (onThucThiTuanTuSS380 != null) {
      onVoidCaiDatDonViThucThiSS380(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS380,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS380?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS380) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS380);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS380);
    }
    if (onThucThiTuanTuSS390 != null) {
      onVoidCaiDatDonViThucThiSS390(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS390,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS390?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS390) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS390);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS390);
    }
    if (onThucThiTuanTuSS400 != null) {
      onVoidCaiDatDonViThucThiSS400(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS400,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS400?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS400) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS400);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS400);
    }

    /// -----
    /// TODO: 41 - 50
    /// -----
    if (onThucThiTuanTuSS410 != null) {
      onVoidCaiDatDonViThucThiSS410(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS410,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS410?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS410) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS410);
            }
          },
        ),
        setUuTien: true,
      );

      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS410);
    }
    if (onThucThiTuanTuSS420 != null) {
      onVoidCaiDatDonViThucThiSS420(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS420,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS420?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS420) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS420);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS420);
    }
    if (onThucThiTuanTuSS430 != null) {
      onVoidCaiDatDonViThucThiSS430(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS430,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS430?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS430) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS430);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS430);
    }
    if (onThucThiTuanTuSS440 != null) {
      onVoidCaiDatDonViThucThiSS440(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS440,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS440?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS440) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS440);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS440);
    }
    if (onThucThiTuanTuSS450 != null) {
      onVoidCaiDatDonViThucThiSS450(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS450,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS450?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS450) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS450);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS450);
    }
    if (onThucThiTuanTuSS460 != null) {
      onVoidCaiDatDonViThucThiSS460(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS460,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS460?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS460) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS460);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS460);
    }
    if (onThucThiTuanTuSS470 != null) {
      onVoidCaiDatDonViThucThiSS470(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS470,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS470?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS470) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS470);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS470);
    }
    if (onThucThiTuanTuSS480 != null) {
      onVoidCaiDatDonViThucThiSS480(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS480,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS480?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS480) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS480);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS480);
    }
    if (onThucThiTuanTuSS490 != null) {
      onVoidCaiDatDonViThucThiSS490(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS490,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS490?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS490) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS490);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS490);
    }
    if (onThucThiTuanTuSS500 != null) {
      onVoidCaiDatDonViThucThiSS500(
        value: ExecutionUnit(
          onThucThi: onThucThiTuanTuSS500,
          onThucThiHoanTat: () async {
            await getDonViThucThiSS500?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

            if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS500) == true) {
              getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS500);
            }
          },
        ),
        setUuTien: true,
      );
      getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS500);
    }

    getDonViThucThiSS010?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS020?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS030?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS040?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS050?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS060?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS070?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS080?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS090?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS100?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();

    getDonViThucThiSS110?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS120?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS130?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS140?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS150?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS160?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS170?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS180?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS190?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS200?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();

    getDonViThucThiSS210?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS220?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS230?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS240?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS250?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS260?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS270?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS280?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS290?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS300?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();

    getDonViThucThiSS310?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS320?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS330?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS340?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS350?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS360?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS370?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS380?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS390?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS400?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();

    getDonViThucThiSS410?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS420?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS430?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS440?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS450?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS460?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS470?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS480?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS490?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
    getDonViThucThiSS500?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
  }

  void onAddDonViThucThiTuanTu({Future<void> Function()? onThucThiTuanTu}) {
    if (onThucThiTuanTu != null) {
      if (getDonViThucThiSS010 == null) {
        onVoidCaiDatDonViThucThiSS010(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS010?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS010) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS010);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS010);
        getDonViThucThiSS010?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS020 == null) {
        onVoidCaiDatDonViThucThiSS020(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS020?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS020) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS020);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS020);
        getDonViThucThiSS020?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS030 == null) {
        onVoidCaiDatDonViThucThiSS030(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS030?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS030) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS030);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS030);
        getDonViThucThiSS030?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS040 == null) {
        onVoidCaiDatDonViThucThiSS040(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS040?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS040) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS040);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS040);
        getDonViThucThiSS040?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS050 == null) {
        onVoidCaiDatDonViThucThiSS050(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS050?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS050) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS050);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS050);
        getDonViThucThiSS050?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS060 == null) {
        onVoidCaiDatDonViThucThiSS060(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS060?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS060) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS060);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS060);
        getDonViThucThiSS060?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS070 == null) {
        onVoidCaiDatDonViThucThiSS070(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS070?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS070) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS070);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS070);
        getDonViThucThiSS070?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS080 == null) {
        onVoidCaiDatDonViThucThiSS080(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS080?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS080) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS080);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS080);
        getDonViThucThiSS080?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS090 == null) {
        onVoidCaiDatDonViThucThiSS090(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS090?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS090) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS090);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS090);
        getDonViThucThiSS090?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS100 == null) {
        onVoidCaiDatDonViThucThiSS100(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS100?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS100) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS100);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS100);
        getDonViThucThiSS100?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS110 == null) {
        onVoidCaiDatDonViThucThiSS110(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS110?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS110) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS110);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS110);
        getDonViThucThiSS110?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS120 == null) {
        onVoidCaiDatDonViThucThiSS120(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS120?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS120) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS120);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS120);
        getDonViThucThiSS120?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS130 == null) {
        onVoidCaiDatDonViThucThiSS130(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS130?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS130) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS130);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS130);
        getDonViThucThiSS130?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS140 == null) {
        onVoidCaiDatDonViThucThiSS140(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS140?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS140) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS140);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS140);
        getDonViThucThiSS140?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS150 == null) {
        onVoidCaiDatDonViThucThiSS150(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS150?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS150) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS150);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS150);
        getDonViThucThiSS150?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS160 == null) {
        onVoidCaiDatDonViThucThiSS160(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS160?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS160) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS160);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS160);
        getDonViThucThiSS160?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS170 == null) {
        onVoidCaiDatDonViThucThiSS170(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS170?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS170) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS170);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS170);
        getDonViThucThiSS170?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS180 == null) {
        onVoidCaiDatDonViThucThiSS180(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS180?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS180) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS180);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS180);
        getDonViThucThiSS180?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS190 == null) {
        onVoidCaiDatDonViThucThiSS190(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS190?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS190) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS190);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS190);
        getDonViThucThiSS190?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS200 == null) {
        onVoidCaiDatDonViThucThiSS200(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS200?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS200) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS200);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS200);
        getDonViThucThiSS200?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS210 == null) {
        onVoidCaiDatDonViThucThiSS210(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS210?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS210) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS210);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS210);
        getDonViThucThiSS210?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS220 == null) {
        onVoidCaiDatDonViThucThiSS220(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS220?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS220) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS220);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS220);
        getDonViThucThiSS220?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS230 == null) {
        onVoidCaiDatDonViThucThiSS230(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS230?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS230) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS230);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS230);
        getDonViThucThiSS230?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS240 == null) {
        onVoidCaiDatDonViThucThiSS240(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS240?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS240) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS240);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS240);
        getDonViThucThiSS240?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS250 == null) {
        onVoidCaiDatDonViThucThiSS250(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS250?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS250) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS250);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS250);
        getDonViThucThiSS250?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS260 == null) {
        onVoidCaiDatDonViThucThiSS260(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS260?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS260) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS260);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS260);
        getDonViThucThiSS260?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS270 == null) {
        onVoidCaiDatDonViThucThiSS270(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS270?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS270) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS270);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS270);
        getDonViThucThiSS270?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS280 == null) {
        onVoidCaiDatDonViThucThiSS280(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS280?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS280) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS280);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS280);
        getDonViThucThiSS280?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS290 == null) {
        onVoidCaiDatDonViThucThiSS290(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS290?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS290) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS290);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS290);
        getDonViThucThiSS290?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS300 == null) {
        onVoidCaiDatDonViThucThiSS300(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS300?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS300) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS300);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS300);
        getDonViThucThiSS300?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS310 == null) {
        onVoidCaiDatDonViThucThiSS310(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS310?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS310) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS310);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS310);
        getDonViThucThiSS310?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS320 == null) {
        onVoidCaiDatDonViThucThiSS320(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS320?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS320) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS320);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS320);
        getDonViThucThiSS320?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS330 == null) {
        onVoidCaiDatDonViThucThiSS330(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS330?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS330) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS330);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS330);
        getDonViThucThiSS330?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS340 == null) {
        onVoidCaiDatDonViThucThiSS340(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS340?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS340) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS340);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS340);
        getDonViThucThiSS340?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS350 == null) {
        onVoidCaiDatDonViThucThiSS350(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS350?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS350) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS350);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS350);
        getDonViThucThiSS350?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS360 == null) {
        onVoidCaiDatDonViThucThiSS360(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS360?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS360) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS360);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS360);
        getDonViThucThiSS360?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS370 == null) {
        onVoidCaiDatDonViThucThiSS370(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS370?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS370) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS370);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS370);
        getDonViThucThiSS370?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS380 == null) {
        onVoidCaiDatDonViThucThiSS380(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS380?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS380) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS380);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS380);
        getDonViThucThiSS380?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS390 == null) {
        onVoidCaiDatDonViThucThiSS390(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS390?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS390) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS390);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS390);
        getDonViThucThiSS390?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS400 == null) {
        onVoidCaiDatDonViThucThiSS400(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS400?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS400) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS400);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS400);
        getDonViThucThiSS400?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS410 == null) {
        onVoidCaiDatDonViThucThiSS410(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS410?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS410) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS410);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS410);
        getDonViThucThiSS410?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS420 == null) {
        onVoidCaiDatDonViThucThiSS420(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS420?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS420) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS420);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS420);
        getDonViThucThiSS420?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS430 == null) {
        onVoidCaiDatDonViThucThiSS430(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS430?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS430) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS430);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS430);
        getDonViThucThiSS430?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS440 == null) {
        onVoidCaiDatDonViThucThiSS440(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS440?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS440) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS440);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS440);
        getDonViThucThiSS440?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS450 == null) {
        onVoidCaiDatDonViThucThiSS450(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS450?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS450) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS450);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS450);
        getDonViThucThiSS450?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS460 == null) {
        onVoidCaiDatDonViThucThiSS460(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS460?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS460) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS460);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS460);
        getDonViThucThiSS460?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS470 == null) {
        onVoidCaiDatDonViThucThiSS470(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS470?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS470) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS470);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS470);
        getDonViThucThiSS470?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS480 == null) {
        onVoidCaiDatDonViThucThiSS480(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS480?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS480) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS480);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS480);
        getDonViThucThiSS480?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS490 == null) {
        onVoidCaiDatDonViThucThiSS490(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS490?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS490) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS490);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS490);
        getDonViThucThiSS490?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      } else if (getDonViThucThiSS500 == null) {
        onVoidCaiDatDonViThucThiSS500(
          value: ExecutionUnit(
            onThucThi: onThucThiTuanTu,
            onThucThiHoanTat: () async {
              await getDonViThucThiSS500?.getTienTrinhThucThi?.onCaiDatTienTrinhHoanTatThucThi();

              if (getDanhSachDonViThucThiTuanTu.contains(getDonViThucThiSS500) == true) {
                getDanhSachDonViThucThiTuanTu.remove(getDonViThucThiSS500);
              }
            },
          ),
          setUuTien: true,
        );
        getDanhSachDonViThucThiTuanTu.add(getDonViThucThiSS500);
        getDonViThucThiSS500?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      }
    }
  }

  /// -----
  /// TODO: Attach Root
  /// -----
  @override
  Future<void> onAttachRoot({required dynamic attachValue, bool? isIgnoreAttachRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Attach Root For SubCom
      /// -----
      if (isIgnoreAttachRootForSubCom == null || isIgnoreAttachRootForSubCom == false) {
        await onAttachRootForSubCom(attachValue: attachValue);
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onAttachRoot');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root
  /// -----
  @override
  Future<void> onInitRoot({bool? isIgnoreInitRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (isIgnoreInitRootForSubCom == null || isIgnoreInitRootForSubCom == false) {
        await onInitRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onInitRoot');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root
  /// -----
  @override
  Future<void> onSetupRoot({bool? isIgnoreSetupRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Setup Root For SubCom
      /// -----
      if (isIgnoreSetupRootForSubCom == null || isIgnoreSetupRootForSubCom == false) {
        await onSetupRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onSetupRoot');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root
  /// -----
  @override
  Future<void> onResetRoot({bool? isIgnoreResetRootForSubCom}) async {
    try {
      /// -----
      /// TODO:
      /// -----

      /// -----
      /// TODO: Init Root For SubCom
      /// -----
      if (isIgnoreResetRootForSubCom == null || isIgnoreResetRootForSubCom == false) {
        await onResetRootForSubCom();
      }
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onResetRoot');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Attach Root For SubCom
  /// -----
  @override
  Future<void> onAttachRootForSubCom({required dynamic attachValue}) async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onAttachRootForSubCom');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Setup Root For SubCom
  /// -----
  @override
  Future<void> onSetupRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onSetupRootForSubCom');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Init Root For SubCom
  /// -----
  @override
  Future<void> onInitRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onInitRootForSubCom');
    }

    ///
    return;
  }

  /// -----
  /// TODO: Reset Root For SubCom
  /// -----
  @override
  Future<void> onResetRootForSubCom() async {
    try {
      /// -----
      /// TODO:
      /// -----
    } catch (e) {
      await onReportRootIssue(nameFunction: 'onResetRootForSubCom');
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  @override
  Future<void> onReportRootIssue({required String? nameFunction}) async {
    ///
    return;
  }

  /// -----
  /// TODO: Chiểu Rộng Thân
  /// -----
  double? _chieuRongThan;
  double? get getChieuRongThan => _chieuRongThan ?? 0;
  void onVoidCaiDatChieuRongThan({required double? value}) {
    if (value != null && value != 0) {
      if (value.isNaN == false && value.isFinite == true) {
        _chieuRongThan = value;
      } else {
        _chieuRongThan = 0;
      }
    } else {
      _chieuRongThan = 0;
    }
    return;
  }

  /// -----
  /// TODO: Dòng Thời Gian
  /// -----
  flutter_async.Timer? _dongThoiGian;

  final Queue<ExecutionUnit?> _danhSachDonViThucThiTuanTu = Queue();
  Queue<ExecutionUnit?> get getDanhSachDonViThucThiTuanTu => _danhSachDonViThucThiTuanTu;

  Future<void> onThucThiTuanTu({Duration interval = const Duration(milliseconds: 100)}) async {
    try {
      if (getDanhSachDonViThucThiTuanTu.isNotEmpty == true) {
        await getDanhSachDonViThucThiTuanTu.first?.getTienTrinhThucThi?.onCaiDatTienTrinhSanSangThucThi();
      }

      _dongThoiGian = flutter_async.Timer.periodic(interval, (timer) async {
        if (getDanhSachDonViThucThiTuanTu.isEmpty == true) {
          _dongThoiGian?.cancel();

          await onThucThiHoanTat?.call();
        } else if (getDanhSachDonViThucThiTuanTu.isNotEmpty == true) {
          if (getDanhSachDonViThucThiTuanTu.first?.getTienTrinhThucThi?.isTienTrinhSanSangThucThi() == true) {
            await getDanhSachDonViThucThiTuanTu.first?.getTienTrinhThucThi?.onCaiDatTienTrinhDangThucThi();

            await getDanhSachDonViThucThiTuanTu.first?.onThucThiTuanTu();
          }
        }
      });
    } catch (e) {
      _dongThoiGian?.cancel();
      await onThucThiHoanTat?.call();
    } finally {
      // _dongThoiGian?.cancel();
      // await onThucThiHoanTat?.call();
    }
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> Function()? onThucThiHoanTat;

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS010;
  ExecutionUnit? get getDonViThucThiSS010 => _donViThucThiSS010;
  void onVoidCaiDatDonViThucThiSS010({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS010 = value;
    } else {
      _donViThucThiSS010 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS020;
  ExecutionUnit? get getDonViThucThiSS020 => _donViThucThiSS020;
  void onVoidCaiDatDonViThucThiSS020({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS020 = value;
    } else {
      _donViThucThiSS020 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS030;
  ExecutionUnit? get getDonViThucThiSS030 => _donViThucThiSS030;
  void onVoidCaiDatDonViThucThiSS030({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS030 = value;
    } else {
      _donViThucThiSS030 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS040;
  ExecutionUnit? get getDonViThucThiSS040 => _donViThucThiSS040;
  void onVoidCaiDatDonViThucThiSS040({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS040 = value;
    } else {
      _donViThucThiSS040 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS050;
  ExecutionUnit? get getDonViThucThiSS050 => _donViThucThiSS050;
  void onVoidCaiDatDonViThucThiSS050({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS050 = value;
    } else {
      _donViThucThiSS050 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS060;
  ExecutionUnit? get getDonViThucThiSS060 => _donViThucThiSS060;
  void onVoidCaiDatDonViThucThiSS060({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS060 = value;
    } else {
      _donViThucThiSS060 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS070;
  ExecutionUnit? get getDonViThucThiSS070 => _donViThucThiSS070;
  void onVoidCaiDatDonViThucThiSS070({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS070 = value;
    } else {
      _donViThucThiSS070 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS080;
  ExecutionUnit? get getDonViThucThiSS080 => _donViThucThiSS080;
  void onVoidCaiDatDonViThucThiSS080({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS080 = value;
    } else {
      _donViThucThiSS080 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS090;
  ExecutionUnit? get getDonViThucThiSS090 => _donViThucThiSS090;
  void onVoidCaiDatDonViThucThiSS090({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS090 = value;
    } else {
      _donViThucThiSS090 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS100;
  ExecutionUnit? get getDonViThucThiSS100 => _donViThucThiSS100;
  void onVoidCaiDatDonViThucThiSS100({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS100 = value;
    } else {
      _donViThucThiSS100 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS110;
  ExecutionUnit? get getDonViThucThiSS110 => _donViThucThiSS110;
  void onVoidCaiDatDonViThucThiSS110({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS110 = value;
    } else {
      _donViThucThiSS110 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS120;
  ExecutionUnit? get getDonViThucThiSS120 => _donViThucThiSS120;
  void onVoidCaiDatDonViThucThiSS120({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS120 = value;
    } else {
      _donViThucThiSS120 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS130;
  ExecutionUnit? get getDonViThucThiSS130 => _donViThucThiSS130;
  void onVoidCaiDatDonViThucThiSS130({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS130 = value;
    } else {
      _donViThucThiSS130 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS140;
  ExecutionUnit? get getDonViThucThiSS140 => _donViThucThiSS140;
  void onVoidCaiDatDonViThucThiSS140({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS140 = value;
    } else {
      _donViThucThiSS140 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS150;
  ExecutionUnit? get getDonViThucThiSS150 => _donViThucThiSS150;
  void onVoidCaiDatDonViThucThiSS150({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS150 = value;
    } else {
      _donViThucThiSS150 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS160;
  ExecutionUnit? get getDonViThucThiSS160 => _donViThucThiSS160;
  void onVoidCaiDatDonViThucThiSS160({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS160 = value;
    } else {
      _donViThucThiSS160 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS170;
  ExecutionUnit? get getDonViThucThiSS170 => _donViThucThiSS170;
  void onVoidCaiDatDonViThucThiSS170({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS170 = value;
    } else {
      _donViThucThiSS170 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS180;
  ExecutionUnit? get getDonViThucThiSS180 => _donViThucThiSS180;
  void onVoidCaiDatDonViThucThiSS180({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS180 = value;
    } else {
      _donViThucThiSS180 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS190;
  ExecutionUnit? get getDonViThucThiSS190 => _donViThucThiSS190;
  void onVoidCaiDatDonViThucThiSS190({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS190 = value;
    } else {
      _donViThucThiSS190 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS200;
  ExecutionUnit? get getDonViThucThiSS200 => _donViThucThiSS200;
  void onVoidCaiDatDonViThucThiSS200({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS200 = value;
    } else {
      _donViThucThiSS200 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS210;
  ExecutionUnit? get getDonViThucThiSS210 => _donViThucThiSS210;
  void onVoidCaiDatDonViThucThiSS210({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS210 = value;
    } else {
      _donViThucThiSS210 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS220;
  ExecutionUnit? get getDonViThucThiSS220 => _donViThucThiSS220;
  void onVoidCaiDatDonViThucThiSS220({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS220 = value;
    } else {
      _donViThucThiSS220 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS230;
  ExecutionUnit? get getDonViThucThiSS230 => _donViThucThiSS230;
  void onVoidCaiDatDonViThucThiSS230({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS230 = value;
    } else {
      _donViThucThiSS230 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS240;
  ExecutionUnit? get getDonViThucThiSS240 => _donViThucThiSS240;
  void onVoidCaiDatDonViThucThiSS240({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS240 = value;
    } else {
      _donViThucThiSS240 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS250;
  ExecutionUnit? get getDonViThucThiSS250 => _donViThucThiSS250;
  void onVoidCaiDatDonViThucThiSS250({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS250 = value;
    } else {
      _donViThucThiSS250 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS260;
  ExecutionUnit? get getDonViThucThiSS260 => _donViThucThiSS260;
  void onVoidCaiDatDonViThucThiSS260({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS260 = value;
    } else {
      _donViThucThiSS260 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS270;
  ExecutionUnit? get getDonViThucThiSS270 => _donViThucThiSS270;
  void onVoidCaiDatDonViThucThiSS270({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS270 = value;
    } else {
      _donViThucThiSS270 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS280;
  ExecutionUnit? get getDonViThucThiSS280 => _donViThucThiSS280;
  void onVoidCaiDatDonViThucThiSS280({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS280 = value;
    } else {
      _donViThucThiSS280 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS290;
  ExecutionUnit? get getDonViThucThiSS290 => _donViThucThiSS290;
  void onVoidCaiDatDonViThucThiSS290({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS290 = value;
    } else {
      _donViThucThiSS290 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS300;
  ExecutionUnit? get getDonViThucThiSS300 => _donViThucThiSS300;
  void onVoidCaiDatDonViThucThiSS300({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS300 = value;
    } else {
      _donViThucThiSS300 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS310;
  ExecutionUnit? get getDonViThucThiSS310 => _donViThucThiSS310;
  void onVoidCaiDatDonViThucThiSS310({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS310 = value;
    } else {
      _donViThucThiSS310 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS320;
  ExecutionUnit? get getDonViThucThiSS320 => _donViThucThiSS320;
  void onVoidCaiDatDonViThucThiSS320({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS320 = value;
    } else {
      _donViThucThiSS320 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS330;
  ExecutionUnit? get getDonViThucThiSS330 => _donViThucThiSS330;
  void onVoidCaiDatDonViThucThiSS330({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS330 = value;
    } else {
      _donViThucThiSS330 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS340;
  ExecutionUnit? get getDonViThucThiSS340 => _donViThucThiSS340;
  void onVoidCaiDatDonViThucThiSS340({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS340 = value;
    } else {
      _donViThucThiSS340 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS350;
  ExecutionUnit? get getDonViThucThiSS350 => _donViThucThiSS350;
  void onVoidCaiDatDonViThucThiSS350({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS350 = value;
    } else {
      _donViThucThiSS350 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS360;
  ExecutionUnit? get getDonViThucThiSS360 => _donViThucThiSS360;
  void onVoidCaiDatDonViThucThiSS360({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS360 = value;
    } else {
      _donViThucThiSS360 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS370;
  ExecutionUnit? get getDonViThucThiSS370 => _donViThucThiSS370;
  void onVoidCaiDatDonViThucThiSS370({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS370 = value;
    } else {
      _donViThucThiSS370 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS380;
  ExecutionUnit? get getDonViThucThiSS380 => _donViThucThiSS380;
  void onVoidCaiDatDonViThucThiSS380({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS380 = value;
    } else {
      _donViThucThiSS380 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS390;
  ExecutionUnit? get getDonViThucThiSS390 => _donViThucThiSS390;
  void onVoidCaiDatDonViThucThiSS390({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS390 = value;
    } else {
      _donViThucThiSS390 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS400;
  ExecutionUnit? get getDonViThucThiSS400 => _donViThucThiSS400;
  void onVoidCaiDatDonViThucThiSS400({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS400 = value;
    } else {
      _donViThucThiSS400 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS410;
  ExecutionUnit? get getDonViThucThiSS410 => _donViThucThiSS410;
  void onVoidCaiDatDonViThucThiSS410({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS410 = value;
    } else {
      _donViThucThiSS410 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS420;
  ExecutionUnit? get getDonViThucThiSS420 => _donViThucThiSS420;
  void onVoidCaiDatDonViThucThiSS420({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS420 = value;
    } else {
      _donViThucThiSS420 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS430;
  ExecutionUnit? get getDonViThucThiSS430 => _donViThucThiSS430;
  void onVoidCaiDatDonViThucThiSS430({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS430 = value;
    } else {
      _donViThucThiSS430 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS440;
  ExecutionUnit? get getDonViThucThiSS440 => _donViThucThiSS440;
  void onVoidCaiDatDonViThucThiSS440({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS440 = value;
    } else {
      _donViThucThiSS440 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS450;
  ExecutionUnit? get getDonViThucThiSS450 => _donViThucThiSS450;
  void onVoidCaiDatDonViThucThiSS450({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS450 = value;
    } else {
      _donViThucThiSS450 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS460;
  ExecutionUnit? get getDonViThucThiSS460 => _donViThucThiSS460;
  void onVoidCaiDatDonViThucThiSS460({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS460 = value;
    } else {
      _donViThucThiSS460 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS470;
  ExecutionUnit? get getDonViThucThiSS470 => _donViThucThiSS470;
  void onVoidCaiDatDonViThucThiSS470({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS470 = value;
    } else {
      _donViThucThiSS470 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS480;
  ExecutionUnit? get getDonViThucThiSS480 => _donViThucThiSS480;
  void onVoidCaiDatDonViThucThiSS480({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS480 = value;
    } else {
      _donViThucThiSS480 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS490;
  ExecutionUnit? get getDonViThucThiSS490 => _donViThucThiSS490;
  void onVoidCaiDatDonViThucThiSS490({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS490 = value;
    } else {
      _donViThucThiSS490 ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  ExecutionUnit? _donViThucThiSS500;
  ExecutionUnit? get getDonViThucThiSS500 => _donViThucThiSS500;
  void onVoidCaiDatDonViThucThiSS500({required ExecutionUnit? value, bool? setUuTien}) {
    if (setUuTien == true) {
      _donViThucThiSS500 = value;
    } else {
      _donViThucThiSS500 ??= value;
    }

    return;
  }
}
