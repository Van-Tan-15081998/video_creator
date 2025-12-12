import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimatedBlocksBackground extends StatefulWidget {
  const AnimatedBlocksBackground({super.key});

  @override
  State<AnimatedBlocksBackground> createState() => _AnimatedBlocksBackgroundState();
}

class _AnimatedBlocksBackgroundState extends State<AnimatedBlocksBackground> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  final List<_BlockData> _blocks = [];
  final Random _random = Random();

  // Tham số điều chỉnh
  static const int blockCount = 50;
  static const double minLife = 5.0;
  static const double maxLife = 10.0;

  double _elapsed = 0.0;

  @override
  void initState() {
    super.initState();
    final now = 0.0;
    for (int i = 0; i < blockCount; i++) {
      _blocks.add(_createBlock(now, initial: true));
    }

    _ticker = createTicker((Duration elapsed) {
      final now = elapsed.inMilliseconds / 1000.0;
      final dt = now - _elapsed;
      _elapsed = now;

      // Cập nhật và tái sinh khối chết
      for (int i = 0; i < _blocks.length; i++) {
        final b = _blocks[i];
        b.age += dt;
        if (b.age > b.lifeSpan) {
          _blocks[i] = _createBlock(_elapsed);
        }
      }

      setState(() {});
    });

    _ticker.start();
  }

  _BlockData _createBlock(double now, {bool initial = false}) {
    return _BlockData(
      birthTime: now,
      lifeSpan: minLife + _random.nextDouble() * (maxLife - minLife),
      x: _random.nextDouble(),
      y: _random.nextDouble(),
      dx: (_random.nextDouble() - 0.5) * 0.3,
      dy: (_random.nextDouble() - 0.5) * 0.3,
      size: 40 + _random.nextDouble() * 60,
      color: Colors.primaries[_random.nextInt(Colors.primaries.length)],
      age: initial ? _random.nextDouble() * 4 : 0.0,
    );
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [CustomPaint(size: size, painter: _BlocksPainter(_blocks, _elapsed))],
      ),
    );
  }
}

class _BlockData {
  double birthTime;
  double lifeSpan;
  double x, y;
  double dx, dy;
  double size;
  Color color;
  double age;

  _BlockData({required this.birthTime, required this.lifeSpan, required this.x, required this.y, required this.dx, required this.dy, required this.size, required this.color, required this.age});
}

class _BlocksPainter extends CustomPainter {
  final List<_BlockData> blocks;
  final double now;
  final Random _random = Random();

  _BlocksPainter(this.blocks, this.now);

  @override
  void paint(Canvas canvas, Size size) {
    for (final b in blocks) {
      final t = (b.age / b.lifeSpan).clamp(0.0, 1.0);

      // Giai đoạn fade in/out
      double fadeIn = Curves.easeOutBack.transform(min(t / 0.2, 1.0));
      double fadeOut = Curves.easeInBack.transform(t > 0.8 ? (t - 0.8) / 0.2 : 0.0).clamp(0.0, 1.0);

      final opacity = (1 - fadeOut) * fadeIn;
      final scale = (1 - fadeOut * 0.4) * (0.5 + fadeIn * 0.5);

      // Di chuyển mượt hơn theo thời gian
      final dx = (b.x + b.dx * t) * size.width;
      final dy = (b.y + b.dy * t) * size.height;

      final paint = Paint()..color = b.color.withValues(alpha: 0.08 * opacity + 0.05);

      canvas.save();
      canvas.translate(dx, dy);
      canvas.scale(scale);
      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, b.size, b.size), const Radius.circular(12)), paint);

      // Viền khối
      final borderPaint = Paint()
        ..color = Color.alphaBlend(b.color.withValues(alpha: opacity * 0.9), Colors.white)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5.0;

      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, b.size, b.size), const Radius.circular(12)), borderPaint);

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
