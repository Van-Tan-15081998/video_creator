import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frame_creator_v2/screens/main_screen/main_screen.dart';
import 'package:frame_creator_v2/state_managements/system_state_management.dart';
import 'package:frame_creator_v2/system/sequential_execution_controller/models/sequential_execution_controller.dart';
import 'package:window_size/window_size.dart';

main() async {
  // ✅ Khởi tạo binding trước khi gọi bất kỳ hàm nào khác
  WidgetsFlutterBinding.ensureInitialized();
  await FlameAudio.bgm.initialize();

  // Kích thước bạn muốn cố định
  // double windowWidth = 2560;
  // double windowHeight = 1440;

  double windowWidth = 2560;
  double windowHeight = 1440;

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // Đặt tiêu đề cửa sổ
    setWindowTitle('My Flutter App');

    // Lấy thông tin màn hình hiện tại
    final screen = await getCurrentScreen();
    final screenFrame = screen?.frame;

    if (screenFrame != null) {
      // Tính toán vị trí để cửa sổ nằm giữa màn hình
      // final left = (screenFrame.width - windowWidth) / 2;
      // final top = (screenFrame.height - windowHeight) / 2;
      // final left = 1.0;
      // final top = 1.0;

      final left = 0.0;
      final top = 0.0;

      // Đặt vị trí + kích thước cửa sổ
      setWindowFrame(Rect.fromLTWH(left, top, windowWidth, windowHeight));
    }

    // Cố định kích thước cửa sổ
    setWindowMinSize(Size(windowWidth, windowHeight));
    setWindowMaxSize(Size(windowWidth, windowHeight));
  }

  runApp(MyApp(sizeDx: 2560, sizeDy: 1440));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.sizeDx, required this.sizeDy});

  final double sizeDx;
  final double sizeDy;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Timer? _timerMilliseconds;
  Timer? _timerSeconds;

  /// -----
  /// TODO:
  /// -----
  SystemStateManagement? _systemStateManagement;
  SystemStateManagement? get getSystemStateManagement => _systemStateManagement;
  void setSystemStateManagement({required SystemStateManagement? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _systemStateManagement = value;
    } else {
      _systemStateManagement ??= value;
    }

    ///
    return;
  }

  /// -----
  /// TODO:
  /// -----
  SequentialExecutionController? _sequentialExecutionController;
  SequentialExecutionController? get getSequentialExecutionController => _sequentialExecutionController;
  void setSequentialExecutionController({required SequentialExecutionController? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _sequentialExecutionController = value;
    } else {
      _sequentialExecutionController ??= value;
    }

    ///
    return;
  }

  @override
  void initState() {
    super.initState();

    setSystemStateManagement(value: SystemStateManagement());
    getSystemStateManagement?.onSetupRoot();
    getSystemStateManagement?.onInitRoot();

    setSequentialExecutionController(
      value: SequentialExecutionController(systemStateManagement: getSystemStateManagement, sizeDx: widget.sizeDx, sizeDy: widget.sizeDy),
    );
    getSequentialExecutionController?.onSetupRoot();
    getSequentialExecutionController?.onInitRoot();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getSequentialExecutionController?.start();

      ///
      // _timerSeconds = Timer.periodic(const Duration(seconds: 1), (timer) {
      _timerSeconds = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        getSequentialExecutionController?.updateSeconds();
      });

      _timerMilliseconds = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
        getSequentialExecutionController?.updateMilliSeconds();
      });

      /// TEST ÂM THANH
      await FlameAudio.audioCache.load('bgm/jazz-background-music.mp3');
      // await FlameAudio.audioCache.load('sfx/close_window_01.mp3');
      // await FlameAudio.audioCache.load('sfx/open_window_01.mp3');
      // await FlameAudio.audioCache.load('sfx/open_window_02.mp3');
      // FlameAudio.play('bgm/jazz-background-music.mp3');

      // await FlameAudio.audioCache.loadAll(bgmList);
      await FlameAudio.audioCache.loadAll(longBgmList);

      // final player = FlameAudio.bgm.audioPlayer;
      // FlameAudio.bgm.play('bgm/jazz-background-music.mp3');
      // fadeOutBGM(duration: 5);

      playRandomBgm();
      // FlameAudio.bgm.audioPlayer.onPlayerComplete.listen((event) {
      // FlameAudio.bgm.audioPlayer.onPlayerComplete.listen((event) {
      //   playRandomBgm();
      // });
    });
  }

  final List<String> longBgmList = [
    'bgm/dragon_studio/long/chill-rain-sounds-fx.mp3',
    'bgm/dragon_studio/long/copyright-free-rain-sounds.mp3',
    'bgm/dragon_studio/long/gentle-rain-01.mp3',
    'bgm/dragon_studio/long/gentle-rain-03.mp3',
    'bgm/dragon_studio/long/gentle-rain-04.mp3',
    'bgm/dragon_studio/long/gentle-rain-06.mp3',
    'bgm/dragon_studio/long/gentle-rain-07.mp3',
    'bgm/dragon_studio/long/lo-fi-rain-sounds.mp3',
    'bgm/dragon_studio/long/rain.mp3',
    'bgm/dragon_studio/long/rain-asmr.mp3',
    'bgm/dragon_studio/long/relaxing-rain.mp3',
    'bgm/dragon_studio/long/relaxing-rain-sounds.mp3',
  ];

  final List<String> bgmList = [
    'bgm/dragon_studio/cozy-midnight-rain-01.mp3',
    'bgm/dragon_studio/cozy-midnight-rain-02.mp3',
    'bgm/dragon_studio/cozy-midnight-rain-03.mp3',
    'bgm/dragon_studio/cozy-midnight-rain-04.mp3',
    'bgm/dragon_studio/cozy-midnight-rain-05.mp3',
    'bgm/dragon_studio/cozy-midnight-rain-06.mp3',
    'bgm/dragon_studio/cozy-midnight-rain-07.mp3',
  ];

  final Random _random = Random();
  String? _currentBgm;

  Future<void> playRandomBgm() async {
    final player = FlameAudio.bgm.audioPlayer;

    // chọn bài khác bài hiện tại
    String nextBgm;
    do {
      // nextBgm = bgmList[_random.nextInt(bgmList.length)];
      nextBgm = longBgmList[_random.nextInt(longBgmList.length)];
    } while (nextBgm == _currentBgm);

    _currentBgm = nextBgm;
    double current = getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume ?? 0.1; // Volume hiện tại

    if (getSystemStateManagement?.getMusicAndSound?.getIsFixedBackgroundMusicVolume == false) {
      // FlameAudio.bgm.play(nextBgm, volume: 0.25);
      if (getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume != 0) {
        current = getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume ?? 0.1;
      } else {
        current = 0.15;
      }

      FlameAudio.bgm.play(nextBgm, volume: current);
    } else {
      FlameAudio.bgm.play(nextBgm, volume: getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume ?? 0.1);
    }

    const int stepCount = 30; // số bước tăng
    final double step = (current / stepCount) * 0.25;
    final int delay = (30 * 1000 ~/ stepCount);

    for (int i = 0; i < stepCount; i++) {
      /// Không to hẳn
      if (current <= 0.5) {
        current += step;

        if (current < 0) {
          current = 0;
        }
        if (getSystemStateManagement?.getMusicAndSound?.getIsFixedBackgroundMusicVolume == false) {
          await player.setVolume(current);
          getSystemStateManagement?.getMusicAndSound?.setCurrentBackgroundMusicVolume(value: current, isPriorityOverride: true);
        }

        await Future.delayed(Duration(milliseconds: delay));
        if (kDebugMode) {
          print('[main][FlameAudio-delay-increase] $current - $step');
        }
      }
    }

    fadeOutBGM(duration: 60);
  }

  /// Giảm Âm Lượng Âm Thanh Trước Khi Tắt Hẳn
  Future<void> fadeOutBGM({double duration = 1.5}) async {
    final player = FlameAudio.bgm.audioPlayer;

    double current = getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume ?? 0.1; // Volume hiện tại

    if (getSystemStateManagement?.getMusicAndSound?.getIsFixedBackgroundMusicVolume == false) {
      if (getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume != 0) {
        current = getSystemStateManagement?.getMusicAndSound?.getCurrentBackgroundMusicVolume ?? 0.1;
      } else {
        current = 0.15;
      }
    }

    const int stepCount = 30; // số bước giảm
    final double step = (current / stepCount) * 0.25;
    final int delay = (duration * 1000 ~/ stepCount);

    for (int i = 0; i < stepCount; i++) {
      /// Không tắt hẳn
      if (current >= 0.05) {
        current -= step;

        if (current < 0) {
          current = 0;
        }

        if (getSystemStateManagement?.getMusicAndSound?.getIsFixedBackgroundMusicVolume == false) {
          await player.setVolume(current);
          getSystemStateManagement?.getMusicAndSound?.setCurrentBackgroundMusicVolume(value: current, isPriorityOverride: true);
        }

        await Future.delayed(Duration(milliseconds: delay));
        if (kDebugMode) {
          print('[main][FlameAudio-delay_decrease] $current - $step');
        }
      }
    }

    // await FlameAudio.bgm.stop(); // dừng hẳn
    await FlameAudio.bgm.stop().whenComplete(() {
      playRandomBgm();
      if (kDebugMode) {
        print('[main][FlameAudio] playRandomBgm');
      }
    });
  }

  @override
  void dispose() {
    _timerSeconds?.cancel();
    _timerMilliseconds?.cancel();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF1C1C1C),
        // body: Transform.scale(
        //   scale: 0.7, // 👈 Scale toàn bộ giao diện 80%
        //   alignment: Alignment.topLeft, // Giữ tâm khi scale
        //   child: LayoutDemo(),
        // ),
        // body: LayoutDemo(systemStateManagement: getSystemStateManagement),
        body: Center(child: MainScreen(sequentialExecutionController: getSequentialExecutionController)),
      ),
      // body: KeyboardDemo()),
      // const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              // Column is also a layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              //
              // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
              // action in the IDE, or press "p" in the console), to see the
              // wireframe for each widget.
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('${constraints.maxWidth}'),
                Text('${constraints.maxHeight}'),
                Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: _incrementCounter, tooltip: 'Increment', child: const Icon(Icons.add)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
