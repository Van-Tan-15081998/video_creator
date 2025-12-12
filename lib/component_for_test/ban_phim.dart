import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KeyboardDemo extends StatefulWidget {
  const KeyboardDemo({super.key});

  @override
  State<KeyboardDemo> createState() => _KeyboardDemoState();
}

class _KeyboardDemoState extends State<KeyboardDemo> {
  final FocusNode _focusNode = FocusNode();
  String _lastKey = '';

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus(); // 🔥 Quan trọng: tự động focus widget
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: (KeyEvent event) {
        if (event is KeyDownEvent) {
          setState(() {
            _lastKey = event.logicalKey.keyLabel;
          });
          if (kDebugMode) {
            print('Key pressed: ${event.logicalKey}');
          }
        }
      },
      child: Container(
        width: 300,
        height: 200,
        color: Colors.blue.shade100,
        alignment: Alignment.center,
        child: Text(_lastKey.isEmpty ? 'Nhấn phím bất kỳ...' : 'Bạn vừa nhấn: $_lastKey', style: const TextStyle(fontSize: 20)),
      ),
    );
  }
}
