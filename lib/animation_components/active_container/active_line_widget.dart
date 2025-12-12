import 'dart:math' as math;

import 'package:flutter/material.dart';

class ActiveLineWidget extends StatefulWidget {
  const ActiveLineWidget({super.key, this.isReverse, this.color});

  final bool? isReverse;
  final Color? color;

  @override
  State<ActiveLineWidget> createState() => _ActiveLineWidgetState();
}

class _ActiveLineWidgetState extends State<ActiveLineWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2))..repeat(); // Lặp vô hạn
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double containerWidth = 500;
    const double containerHeight = 500;
    const int numBars = 20;
    const double barWidth = 20;

    // Khoảng cách đều nhau
    final double spacing = (containerWidth - (numBars * barWidth)) / (numBars - 1);

    return Center(
      child: Container(
        width: containerWidth,
        height: containerHeight,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(color: Color(0xFF1C1C1C), borderRadius: BorderRadius.circular(0)),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            double offsetX = 0;
            if (widget.isReverse == true) {
              offsetX = -_controller.value * (barWidth + spacing); // di chuyển các thanh
            } else {
              offsetX = _controller.value * (barWidth + spacing); // di chuyển các thanh
            }

            return Stack(
              children: List.generate(numBars, (index) {
                double totalWidth = 0;
                double x = 0;

                if (widget.isReverse == true) {
                  totalWidth = numBars * (barWidth + spacing);
                  x = ((index * (barWidth + spacing)) + offsetX) % totalWidth;
                } else {
                  totalWidth = numBars * (barWidth + spacing);
                  x = ((index * (barWidth + spacing)) + offsetX) % totalWidth - barWidth;
                }

                return Transform.scale(
                  scaleY: 1.2,
                  child: Transform.translate(
                    offset: Offset(x - barWidth, -5.0),
                    child: Transform.rotate(
                      angle: -math.pi / 16, // nghiêng nhẹ
                      child: Container(
                        width: barWidth,
                        height: containerHeight + 50.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              widget.color ?? Color(0xFFFF4040).withValues(alpha: 1.0), //
                              widget.color ?? Color(0xFFFF4040).withValues(alpha: 1.0), //
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
