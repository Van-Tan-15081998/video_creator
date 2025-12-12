mixin SimpleAnimationPositionSize {
  double? topPosition;
  double? rightPosition;
  double? bottomPosition;
  double? leftPosition;

  double sizeDx = 0;
  double sizeDy = 0;

  bool isUpdate = false;

  bool isAnimatedShow = false;
  bool isAnimatedHide = false;

  bool isActivatedWindow = false;

  bool isMarkedUnactivatedWindow = false;
}
