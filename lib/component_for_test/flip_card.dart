import 'dart:math';

import 'package:flutter/material.dart';

class FlipCard extends StatefulWidget {
  const FlipCard({super.key, required this.id, required this.sizeDx, required this.sizeDy, this.opacityRange, this.cellColor});

  final String id;

  final double sizeDx;
  final double sizeDy;

  final double? opacityRange;
  final Color? cellColor;

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotationX;
  late Animation<double> _rotationY;
  final Random _random = Random();

  Color flipColor = Colors.black;

  double borderRadius = 2.0;

  BorderRadiusGeometry? borderRadiusGeometry;

  @override
  void initState() {
    super.initState();

    borderRadiusGeometry = BorderRadius.circular(borderRadius);

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));

    _setupAnimations();

    _startRandomFlipLoop();

    switch (widget.id) {
      case '01':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.8 * (widget.opacityRange ?? 1.0));

          borderRadius = 0;
        }
        break;

      case '01A':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.8 * (widget.opacityRange ?? 1.0));

          borderRadiusGeometry = BorderRadius.only(topLeft: Radius.circular(5.0));
        }
        break;

      case '01B':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.8 * (widget.opacityRange ?? 1.0));

          borderRadiusGeometry = BorderRadius.only(topRight: Radius.circular(5.0));
        }
        break;

      case '01C':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.8 * (widget.opacityRange ?? 1.0));

          borderRadiusGeometry = BorderRadius.only(bottomLeft: Radius.circular(5.0));
        }
        break;

      case '01D':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.8 * (widget.opacityRange ?? 1.0));

          borderRadiusGeometry = BorderRadius.only(bottomRight: Radius.circular(5.0));
        }
        break;
      case '02':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.7 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '03':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.7 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '04':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.6 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '05':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.5 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '06':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.4 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '07':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.3 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '08':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.2 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '09':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.1 * (widget.opacityRange ?? 1.0));
        }
        break;
      case '10':
        {
          flipColor = (widget.cellColor ?? Colors.black).withValues(alpha: 0.05 * (widget.opacityRange ?? 1.0));
        }
        break;
    }
  }

  void _setupAnimations() {
    // Tạo biên độ flip ngẫu nhiên
    final xAngle = pi / 30 + _random.nextDouble() * (pi / 25);
    final yAngle = pi / 30 + _random.nextDouble() * (pi / 25);

    _rotationX = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: xAngle), weight: 1),
      TweenSequenceItem(
        tween: Tween(begin: xAngle, end: -xAngle),
        weight: 2,
      ),
      TweenSequenceItem(tween: Tween(begin: -xAngle, end: 0.0), weight: 1),
    ]).chain(CurveTween(curve: Curves.easeInOutSine)).animate(_controller);

    _rotationY = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: yAngle), weight: 1),
      TweenSequenceItem(
        tween: Tween(begin: yAngle, end: -yAngle),
        weight: 2,
      ),
      TweenSequenceItem(tween: Tween(begin: -yAngle, end: 0.0), weight: 1),
    ]).chain(CurveTween(curve: Curves.easeInOutSine)).animate(_controller);
  }

  Future<void> _startRandomFlipLoop() async {
    while (mounted) {
      // đợi ngẫu nhiên 10–30 giây
      await Future.delayed(Duration(seconds: 2 + _random.nextInt(20)));

      if (!mounted) break;

      // 50% cơ hội flip
      if (_random.nextBool()) {
        _setupAnimations(); // làm mới biên độ ngẫu nhiên
        await _runSingleFlipCycle();
      }
    }
  }

  Future<void> _runSingleFlipCycle() async {
    await _controller.forward(from: 0);
    _controller.stop(); // đảm bảo dừng ở trạng thái ban đầu
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.0015)
            ..rotateX(_rotationX.value)
            ..rotateY(_rotationY.value),
          child: child,
        );
      },
      child: Container(
        width: widget.sizeDx,
        height: widget.sizeDy,
        decoration: BoxDecoration(
          color: flipColor,
          borderRadius: borderRadiusGeometry,

          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25 * (widget.opacityRange ?? 1.0)),
              blurRadius: borderRadius,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          // widget.id,
          '',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
