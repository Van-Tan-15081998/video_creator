import 'dart:async';
import 'package:flame/components.dart';
import 'package:frame_creator_v2/components/animated_background/widgets/movement_objects/basic_animated_icon_sprite.dart';

/// -----
/// TODO:
/// -----
class AnimatedBackgroundWidget extends Component with HasVisibility {
  /// -----
  /// TODO:
  /// -----
  AnimatedBackgroundWidget() {
    ///
  }

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    try {
      await onSetupRoot();
      await onAddRoot();
    } catch (e) {
      return;
    }

    return;
  }

  /// -----
  /// TODO: Viên Đạn Phương Thức Tấn Công Cơ Bản SS01
  /// -----
  BasicAnimatedIconSprite? _spriteAnimatedIconAX00Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX02Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX04Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX06Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX08Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX10Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX12Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX14Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX16Y00;
  BasicAnimatedIconSprite? _spriteAnimatedIconAX18Y00;

  BasicAnimatedIconSprite? _spriteAnimatedIconBX01Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX03Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX05Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX07Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX09Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX11Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX13Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX15Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX17Y01;
  BasicAnimatedIconSprite? _spriteAnimatedIconBX19Y01;

  BasicAnimatedIconSprite? _spriteAnimatedIconCX00Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX02Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX04Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX06Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX08Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX10Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX12Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX14Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX16Y02;
  BasicAnimatedIconSprite? _spriteAnimatedIconCX18Y02;

  BasicAnimatedIconSprite? _spriteAnimatedIconDX01Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX03Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX05Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX07Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX09Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX11Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX13Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX15Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX17Y03;
  BasicAnimatedIconSprite? _spriteAnimatedIconDX19Y03;

  BasicAnimatedIconSprite? _spriteAnimatedIconEX00Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX02Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX04Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX06Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX08Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX10Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX12Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX14Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX16Y04;
  BasicAnimatedIconSprite? _spriteAnimatedIconEX18Y04;

  BasicAnimatedIconSprite? _spriteAnimatedIconFX01Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX03Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX05Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX07Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX09Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX11Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX13Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX15Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX17Y05;
  BasicAnimatedIconSprite? _spriteAnimatedIconFX19Y05;

  BasicAnimatedIconSprite? _spriteAnimatedIconGX00Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX02Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX04Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX06Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX08Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX10Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX12Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX14Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX16Y06;
  BasicAnimatedIconSprite? _spriteAnimatedIconGX18Y06;

  BasicAnimatedIconSprite? _spriteAnimatedIconHX01Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX03Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX05Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX07Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX09Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX11Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX13Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX15Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX17Y07;
  BasicAnimatedIconSprite? _spriteAnimatedIconHX19Y07;

  BasicAnimatedIconSprite? _spriteAnimatedIconIX00Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX02Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX04Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX06Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX08Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX10Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX12Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX14Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX16Y08;
  BasicAnimatedIconSprite? _spriteAnimatedIconIX18Y08;

  BasicAnimatedIconSprite? _spriteAnimatedIconJX01Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX03Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX05Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX07Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX09Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX11Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX13Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX15Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX17Y09;
  BasicAnimatedIconSprite? _spriteAnimatedIconJX19Y09;

  BasicAnimatedIconSprite? _spriteAnimatedIconKX00Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX02Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX04Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX06Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX08Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX10Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX12Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX14Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX16Y10;
  BasicAnimatedIconSprite? _spriteAnimatedIconKX18Y10;

  BasicAnimatedIconSprite? _spriteAnimatedIconLX01Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX03Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX05Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX07Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX09Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX11Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX13Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX15Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX17Y11;
  BasicAnimatedIconSprite? _spriteAnimatedIconLX19Y11;

  BasicAnimatedIconSprite? _spriteAnimatedIconMX00Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX02Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX04Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX06Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX08Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX10Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX12Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX14Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX16Y12;
  BasicAnimatedIconSprite? _spriteAnimatedIconMX18Y12;

  BasicAnimatedIconSprite? _spriteAnimatedIconNX01Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX03Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX05Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX07Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX09Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX11Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX13Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX15Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX17Y13;
  BasicAnimatedIconSprite? _spriteAnimatedIconNX19Y13;

  BasicAnimatedIconSprite? _spriteAnimatedIconOX00Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX02Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX04Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX06Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX08Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX10Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX12Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX14Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX16Y14;
  BasicAnimatedIconSprite? _spriteAnimatedIconOX18Y14;

  BasicAnimatedIconSprite? _spriteAnimatedIconPX01Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX03Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX05Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX07Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX09Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX11Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX13Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX15Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX17Y15;
  BasicAnimatedIconSprite? _spriteAnimatedIconPX19Y15;

  BasicAnimatedIconSprite? _spriteAnimatedIconQX00Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX02Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX04Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX06Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX08Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX10Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX12Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX14Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX16Y16;
  BasicAnimatedIconSprite? _spriteAnimatedIconQX18Y16;

  BasicAnimatedIconSprite? _spriteAnimatedIconRX01Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX03Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX05Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX07Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX09Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX11Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX13Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX15Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX17Y17;
  BasicAnimatedIconSprite? _spriteAnimatedIconRX19Y17;

  BasicAnimatedIconSprite? _spriteAnimatedIconSX00Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX02Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX04Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX06Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX08Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX10Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX12Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX14Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX16Y18;
  BasicAnimatedIconSprite? _spriteAnimatedIconSX18Y18;

  BasicAnimatedIconSprite? _spriteAnimatedIconTX01Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX03Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX05Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX07Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX09Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX11Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX13Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX15Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX17Y19;
  BasicAnimatedIconSprite? _spriteAnimatedIconTX19Y19;

  /// -----
  /// TODO: Setup Root
  /// -----
  Future<void> onSetupRoot() async {
    /// -----
    /// -----
    /// TODO:
    /// -----
    /// -----
    _spriteAnimatedIconAX00Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX02Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX04Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX06Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX08Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX10Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX12Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX14Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX16Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconAX18Y00 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconBX01Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX03Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX05Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX07Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX09Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX11Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX13Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX15Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX17Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconBX19Y01 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconCX00Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX02Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX04Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX06Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX08Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX10Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX12Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX14Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX16Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconCX18Y02 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconDX01Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX03Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX05Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX07Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX09Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX11Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX13Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX15Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX17Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconDX19Y03 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconEX00Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX02Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX04Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX06Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX08Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX10Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX12Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX14Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX16Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconEX18Y04 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconFX01Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX03Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX05Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX07Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX09Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX11Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX13Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX15Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX17Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconFX19Y05 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconGX00Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX02Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX04Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX06Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX08Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX10Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX12Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX14Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX16Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconGX18Y06 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconHX01Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX03Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX05Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX07Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX09Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX11Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX13Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX15Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX17Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconHX19Y07 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconIX00Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX02Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX04Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX06Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX08Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX10Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX12Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX14Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX16Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconIX18Y08 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconJX01Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX03Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX05Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX07Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX09Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX11Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX13Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX15Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX17Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconJX19Y09 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconKX00Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX02Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX04Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX06Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX08Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX10Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX12Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX14Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX16Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconKX18Y10 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconLX01Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX03Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX05Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX07Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX09Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX11Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX13Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX15Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX17Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconLX19Y11 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconMX00Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX02Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX04Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX06Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX08Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX10Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX12Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX14Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX16Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconMX18Y12 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconNX01Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX03Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX05Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX07Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX09Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX11Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX13Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX15Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX17Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconNX19Y13 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconOX00Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX02Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX04Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX06Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX08Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX10Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX12Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX14Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX16Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconOX18Y14 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconPX01Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX03Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX05Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX07Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX09Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX11Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX13Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX15Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX17Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconPX19Y15 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconQX00Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX02Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX04Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX06Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX08Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX10Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX12Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX14Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX16Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconQX18Y16 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconRX01Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX03Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX05Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX07Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX09Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX11Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX13Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX15Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX17Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconRX19Y17 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconSX00Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX02Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX04Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX06Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX08Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX10Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX12Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX14Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX16Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconSX18Y18 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    _spriteAnimatedIconTX01Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX03Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX05Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX07Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX09Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX11Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX13Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX15Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX17Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);
    _spriteAnimatedIconTX19Y19 = BasicAnimatedIconSprite(parentComponent: this, rangeDx: 0, rangeDy: 0);

    return;
  }

  ///
  /// TODO: onAddRoot
  ///
  Future<void> onAddRoot() async {
    await Future.wait([
      onAddComponent(_spriteAnimatedIconAX00Y00),
      onAddComponent(_spriteAnimatedIconAX02Y00),
      onAddComponent(_spriteAnimatedIconAX04Y00),
      onAddComponent(_spriteAnimatedIconAX06Y00),
      onAddComponent(_spriteAnimatedIconAX08Y00),
      onAddComponent(_spriteAnimatedIconAX10Y00),
      onAddComponent(_spriteAnimatedIconAX12Y00),
      onAddComponent(_spriteAnimatedIconAX14Y00),
      onAddComponent(_spriteAnimatedIconAX16Y00),
      onAddComponent(_spriteAnimatedIconAX18Y00),

      onAddComponent(_spriteAnimatedIconBX01Y01),
      onAddComponent(_spriteAnimatedIconBX03Y01),
      onAddComponent(_spriteAnimatedIconBX05Y01),
      onAddComponent(_spriteAnimatedIconBX07Y01),
      onAddComponent(_spriteAnimatedIconBX09Y01),
      onAddComponent(_spriteAnimatedIconBX11Y01),
      onAddComponent(_spriteAnimatedIconBX13Y01),
      onAddComponent(_spriteAnimatedIconBX15Y01),
      onAddComponent(_spriteAnimatedIconBX17Y01),
      onAddComponent(_spriteAnimatedIconBX19Y01),

      onAddComponent(_spriteAnimatedIconCX00Y02),
      onAddComponent(_spriteAnimatedIconCX02Y02),
      onAddComponent(_spriteAnimatedIconCX04Y02),
      onAddComponent(_spriteAnimatedIconCX06Y02),
      onAddComponent(_spriteAnimatedIconCX08Y02),
      onAddComponent(_spriteAnimatedIconCX10Y02),
      onAddComponent(_spriteAnimatedIconCX12Y02),
      onAddComponent(_spriteAnimatedIconCX14Y02),
      onAddComponent(_spriteAnimatedIconCX16Y02),
      onAddComponent(_spriteAnimatedIconCX18Y02),

      onAddComponent(_spriteAnimatedIconDX01Y03),
      onAddComponent(_spriteAnimatedIconDX03Y03),
      onAddComponent(_spriteAnimatedIconDX05Y03),
      onAddComponent(_spriteAnimatedIconDX07Y03),
      onAddComponent(_spriteAnimatedIconDX09Y03),
      onAddComponent(_spriteAnimatedIconDX11Y03),
      onAddComponent(_spriteAnimatedIconDX13Y03),
      onAddComponent(_spriteAnimatedIconDX15Y03),
      onAddComponent(_spriteAnimatedIconDX17Y03),
      onAddComponent(_spriteAnimatedIconDX19Y03),

      onAddComponent(_spriteAnimatedIconEX00Y04),
      onAddComponent(_spriteAnimatedIconEX02Y04),
      onAddComponent(_spriteAnimatedIconEX04Y04),
      onAddComponent(_spriteAnimatedIconEX06Y04),
      onAddComponent(_spriteAnimatedIconEX08Y04),
      onAddComponent(_spriteAnimatedIconEX10Y04),
      onAddComponent(_spriteAnimatedIconEX12Y04),
      onAddComponent(_spriteAnimatedIconEX14Y04),
      onAddComponent(_spriteAnimatedIconEX16Y04),
      onAddComponent(_spriteAnimatedIconEX18Y04),

      onAddComponent(_spriteAnimatedIconFX01Y05),
      onAddComponent(_spriteAnimatedIconFX03Y05),
      onAddComponent(_spriteAnimatedIconFX05Y05),
      onAddComponent(_spriteAnimatedIconFX07Y05),
      onAddComponent(_spriteAnimatedIconFX09Y05),
      onAddComponent(_spriteAnimatedIconFX11Y05),
      onAddComponent(_spriteAnimatedIconFX13Y05),
      onAddComponent(_spriteAnimatedIconFX15Y05),
      onAddComponent(_spriteAnimatedIconFX17Y05),
      onAddComponent(_spriteAnimatedIconFX19Y05),

      onAddComponent(_spriteAnimatedIconGX00Y06),
      onAddComponent(_spriteAnimatedIconGX02Y06),
      onAddComponent(_spriteAnimatedIconGX04Y06),
      onAddComponent(_spriteAnimatedIconGX06Y06),
      onAddComponent(_spriteAnimatedIconGX08Y06),
      onAddComponent(_spriteAnimatedIconGX10Y06),
      onAddComponent(_spriteAnimatedIconGX12Y06),
      onAddComponent(_spriteAnimatedIconGX14Y06),
      onAddComponent(_spriteAnimatedIconGX16Y06),
      onAddComponent(_spriteAnimatedIconGX18Y06),

      onAddComponent(_spriteAnimatedIconHX01Y07),
      onAddComponent(_spriteAnimatedIconHX03Y07),
      onAddComponent(_spriteAnimatedIconHX05Y07),
      onAddComponent(_spriteAnimatedIconHX07Y07),
      onAddComponent(_spriteAnimatedIconHX09Y07),
      onAddComponent(_spriteAnimatedIconHX11Y07),
      onAddComponent(_spriteAnimatedIconHX13Y07),
      onAddComponent(_spriteAnimatedIconHX15Y07),
      onAddComponent(_spriteAnimatedIconHX17Y07),
      onAddComponent(_spriteAnimatedIconHX19Y07),

      onAddComponent(_spriteAnimatedIconIX00Y08),
      onAddComponent(_spriteAnimatedIconIX02Y08),
      onAddComponent(_spriteAnimatedIconIX04Y08),
      onAddComponent(_spriteAnimatedIconIX06Y08),
      onAddComponent(_spriteAnimatedIconIX08Y08),
      onAddComponent(_spriteAnimatedIconIX10Y08),
      onAddComponent(_spriteAnimatedIconIX12Y08),
      onAddComponent(_spriteAnimatedIconIX14Y08),
      onAddComponent(_spriteAnimatedIconIX16Y08),
      onAddComponent(_spriteAnimatedIconIX18Y08),

      onAddComponent(_spriteAnimatedIconJX01Y09),
      onAddComponent(_spriteAnimatedIconJX03Y09),
      onAddComponent(_spriteAnimatedIconJX05Y09),
      onAddComponent(_spriteAnimatedIconJX07Y09),
      onAddComponent(_spriteAnimatedIconJX09Y09),
      onAddComponent(_spriteAnimatedIconJX11Y09),
      onAddComponent(_spriteAnimatedIconJX13Y09),
      onAddComponent(_spriteAnimatedIconJX15Y09),
      onAddComponent(_spriteAnimatedIconJX17Y09),
      onAddComponent(_spriteAnimatedIconJX19Y09),

      onAddComponent(_spriteAnimatedIconKX00Y10),
      onAddComponent(_spriteAnimatedIconKX02Y10),
      onAddComponent(_spriteAnimatedIconKX04Y10),
      onAddComponent(_spriteAnimatedIconKX06Y10),
      onAddComponent(_spriteAnimatedIconKX08Y10),
      onAddComponent(_spriteAnimatedIconKX10Y10),
      onAddComponent(_spriteAnimatedIconKX12Y10),
      onAddComponent(_spriteAnimatedIconKX14Y10),
      onAddComponent(_spriteAnimatedIconKX16Y10),
      onAddComponent(_spriteAnimatedIconKX18Y10),

      onAddComponent(_spriteAnimatedIconLX01Y11),
      onAddComponent(_spriteAnimatedIconLX03Y11),
      onAddComponent(_spriteAnimatedIconLX05Y11),
      onAddComponent(_spriteAnimatedIconLX07Y11),
      onAddComponent(_spriteAnimatedIconLX09Y11),
      onAddComponent(_spriteAnimatedIconLX11Y11),
      onAddComponent(_spriteAnimatedIconLX13Y11),
      onAddComponent(_spriteAnimatedIconLX15Y11),
      onAddComponent(_spriteAnimatedIconLX17Y11),
      onAddComponent(_spriteAnimatedIconLX19Y11),

      onAddComponent(_spriteAnimatedIconMX00Y12),
      onAddComponent(_spriteAnimatedIconMX02Y12),
      onAddComponent(_spriteAnimatedIconMX04Y12),
      onAddComponent(_spriteAnimatedIconMX06Y12),
      onAddComponent(_spriteAnimatedIconMX08Y12),
      onAddComponent(_spriteAnimatedIconMX10Y12),
      onAddComponent(_spriteAnimatedIconMX12Y12),
      onAddComponent(_spriteAnimatedIconMX14Y12),
      onAddComponent(_spriteAnimatedIconMX16Y12),
      onAddComponent(_spriteAnimatedIconMX18Y12),

      onAddComponent(_spriteAnimatedIconNX01Y13),
      onAddComponent(_spriteAnimatedIconNX03Y13),
      onAddComponent(_spriteAnimatedIconNX05Y13),
      onAddComponent(_spriteAnimatedIconNX07Y13),
      onAddComponent(_spriteAnimatedIconNX09Y13),
      onAddComponent(_spriteAnimatedIconNX11Y13),
      onAddComponent(_spriteAnimatedIconNX13Y13),
      onAddComponent(_spriteAnimatedIconNX15Y13),
      onAddComponent(_spriteAnimatedIconNX17Y13),
      onAddComponent(_spriteAnimatedIconNX19Y13),

      onAddComponent(_spriteAnimatedIconOX00Y14),
      onAddComponent(_spriteAnimatedIconOX02Y14),
      onAddComponent(_spriteAnimatedIconOX04Y14),
      onAddComponent(_spriteAnimatedIconOX06Y14),
      onAddComponent(_spriteAnimatedIconOX08Y14),
      onAddComponent(_spriteAnimatedIconOX10Y14),
      onAddComponent(_spriteAnimatedIconOX12Y14),
      onAddComponent(_spriteAnimatedIconOX14Y14),
      onAddComponent(_spriteAnimatedIconOX16Y14),
      onAddComponent(_spriteAnimatedIconOX18Y14),

      onAddComponent(_spriteAnimatedIconPX01Y15),
      onAddComponent(_spriteAnimatedIconPX03Y15),
      onAddComponent(_spriteAnimatedIconPX05Y15),
      onAddComponent(_spriteAnimatedIconPX07Y15),
      onAddComponent(_spriteAnimatedIconPX09Y15),
      onAddComponent(_spriteAnimatedIconPX11Y15),
      onAddComponent(_spriteAnimatedIconPX13Y15),
      onAddComponent(_spriteAnimatedIconPX15Y15),
      onAddComponent(_spriteAnimatedIconPX17Y15),
      onAddComponent(_spriteAnimatedIconPX19Y15),

      onAddComponent(_spriteAnimatedIconQX00Y16),
      onAddComponent(_spriteAnimatedIconQX02Y16),
      onAddComponent(_spriteAnimatedIconQX04Y16),
      onAddComponent(_spriteAnimatedIconQX06Y16),
      onAddComponent(_spriteAnimatedIconQX08Y16),
      onAddComponent(_spriteAnimatedIconQX10Y16),
      onAddComponent(_spriteAnimatedIconQX12Y16),
      onAddComponent(_spriteAnimatedIconQX14Y16),
      onAddComponent(_spriteAnimatedIconQX16Y16),
      onAddComponent(_spriteAnimatedIconQX18Y16),

      onAddComponent(_spriteAnimatedIconRX01Y17),
      onAddComponent(_spriteAnimatedIconRX03Y17),
      onAddComponent(_spriteAnimatedIconRX05Y17),
      onAddComponent(_spriteAnimatedIconRX07Y17),
      onAddComponent(_spriteAnimatedIconRX09Y17),
      onAddComponent(_spriteAnimatedIconRX11Y17),
      onAddComponent(_spriteAnimatedIconRX13Y17),
      onAddComponent(_spriteAnimatedIconRX15Y17),
      onAddComponent(_spriteAnimatedIconRX17Y17),
      onAddComponent(_spriteAnimatedIconRX19Y17),

      onAddComponent(_spriteAnimatedIconSX00Y18),
      onAddComponent(_spriteAnimatedIconSX02Y18),
      onAddComponent(_spriteAnimatedIconSX04Y18),
      onAddComponent(_spriteAnimatedIconSX06Y18),
      onAddComponent(_spriteAnimatedIconSX08Y18),
      onAddComponent(_spriteAnimatedIconSX10Y18),
      onAddComponent(_spriteAnimatedIconSX12Y18),
      onAddComponent(_spriteAnimatedIconSX14Y18),
      onAddComponent(_spriteAnimatedIconSX16Y18),
      onAddComponent(_spriteAnimatedIconSX18Y18),

      onAddComponent(_spriteAnimatedIconTX01Y19),
      onAddComponent(_spriteAnimatedIconTX03Y19),
      onAddComponent(_spriteAnimatedIconTX05Y19),
      onAddComponent(_spriteAnimatedIconTX07Y19),
      onAddComponent(_spriteAnimatedIconTX09Y19),
      onAddComponent(_spriteAnimatedIconTX11Y19),
      onAddComponent(_spriteAnimatedIconTX13Y19),
      onAddComponent(_spriteAnimatedIconTX15Y19),
      onAddComponent(_spriteAnimatedIconTX17Y19),
      onAddComponent(_spriteAnimatedIconTX19Y19),
    ]);

    return;
  }

  Future<void> onAddComponent(Component? comp) async {
    try {
      if (comp != null && comp.isMounted == false) {
        await Future.delayed(Duration.zero);
        await add(comp);
      }
    } catch (e) {
      // Ghi log nếu muốn
    }
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onInitRoot() async {
    /// -----
    /// -----
    /// TODO: Phương Tiện
    /// -----
    /// -----

    return;
  }
}
