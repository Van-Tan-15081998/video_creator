import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AnimatedBlocksBackground2 extends StatefulWidget {
  const AnimatedBlocksBackground2({super.key});

  @override
  State<AnimatedBlocksBackground2> createState() => _AnimatedBlocksBackgroundState();
}

class _AnimatedBlocksBackgroundState extends State<AnimatedBlocksBackground2> with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  final Random _random = Random();
  final List<_BlockData> _blocks = [];
  double _elapsed = 0.0;

  static const int blockCount = 40;
  static const double minLife = 8.0;
  static const double maxLife = 15.0;

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < blockCount; i++) {
      _blocks.add(_createBlock(initial: true));
    }

    _ticker = createTicker((elapsed) {
      final now = elapsed.inMilliseconds / 1000.0;
      final dt = now - _elapsed;
      _elapsed = now;

      // cập nhật từng khối
      for (int i = 0; i < _blocks.length; i++) {
        final b = _blocks[i];
        b.age += dt;

        // nếu quá tuổi thọ -> tái sinh khối mới
        if (b.age > b.lifeSpan) {
          _blocks[i] = _createBlock();
        } else {
          // thay đổi hướng từ từ (gió)
          b.windPhase += dt * 0.5;
          b.dx += sin(b.windPhase) * 0.001;
          b.dy += cos(b.windPhase) * 0.001;

          // cập nhật vị trí
          b.x += b.dx * dt;
          b.y += b.dy * dt;

          // nếu ra ngoài màn hình -> quay lại ngược hướng
          if (b.x < -0.1 || b.x > 1.1) b.dx = -b.dx;
          if (b.y < -0.1 || b.y > 1.1) b.dy = -b.dy;
        }
      }

      setState(() {});
    });

    _ticker.start();
  }

  _BlockData _createBlock({bool initial = false}) {
    final layer = _random.nextInt(3); // 3 lớp độ sâu
    final depthFactor = [0.3, 0.6, 1.0][layer];

    return _BlockData(
      lifeSpan: minLife + _random.nextDouble() * (maxLife - minLife),
      x: _random.nextDouble(),
      y: _random.nextDouble(),
      dx: (_random.nextDouble() - 0.5) * 0.1 * depthFactor,
      dy: (_random.nextDouble() - 0.5) * 0.1 * depthFactor,
      size: 40 + _random.nextDouble() * 60 * depthFactor,
      color: Colors.primaries[_random.nextInt(Colors.primaries.length)],
      layerDepth: depthFactor,
      age: initial ? _random.nextDouble() * 5 : 0.0,
      windPhase: _random.nextDouble() * pi * 2,
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
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          CustomPaint(size: size, painter: _BlocksPainter(_blocks)),
          // Bạn có thể thêm nội dung chính ở đây
          Center(
            child: Container(
              width: 280,
              height: 160,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.9),
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 16, offset: Offset(0, 6))],
              ),
              child: const Text(
                "🌿 Relax & Learn 🌿",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BlockData {
  double lifeSpan;
  double x, y;
  double dx, dy;
  double size;
  Color color;
  double age;
  double layerDepth;
  double windPhase;

  _BlockData({
    required this.lifeSpan,
    required this.x,
    required this.y,
    required this.dx,
    required this.dy,
    required this.size,
    required this.color,
    required this.layerDepth,
    required this.age,
    required this.windPhase,
  });
}

class _BlocksPainter extends CustomPainter {
  final List<_BlockData> blocks;

  _BlocksPainter(this.blocks);

  @override
  void paint(Canvas canvas, Size size) {
    for (final b in blocks) {
      final t = (b.age / b.lifeSpan).clamp(0.0, 1.0);

      // hiệu ứng fade + scale
      double fadeIn = Curves.easeOutBack.transform(min(t / 0.25, 1.0));
      double fadeOut = Curves.easeInBack.transform(t > 0.8 ? (t - 0.8) / 0.2 : 0.0);
      final opacity = (1 - fadeOut) * fadeIn * (0.3 + b.layerDepth * 0.7);
      final scale = (1 - fadeOut * 0.5) * (0.5 + fadeIn * 0.5);

      final dx = b.x * size.width;
      final dy = b.y * size.height;

      // Màu có ánh sáng
      final gradient = RadialGradient(
        colors: [
          b.color.withValues(alpha: opacity * 0.9),
          b.color.withValues(alpha: opacity * 0.3),
          Colors.transparent,
        ],
        stops: const [0.0, 0.6, 1.0],
      );

      final rect = Rect.fromLTWH(dx, dy, b.size, b.size);
      final paint = Paint()
        ..shader = gradient.createShader(rect)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 10);

      canvas.save();
      canvas.translate(dx, dy);
      canvas.scale(scale);
      canvas.drawRRect(RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, b.size, b.size), const Radius.circular(10)), paint);
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
