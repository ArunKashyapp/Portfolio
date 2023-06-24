import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/views/styles/colors.dart';
// Import the Flutter Icons package

class AnimatedTextWidget extends StatefulWidget {
  final List<String> texts;
  final TextStyle textStyle;
  final Function onpressed;

  const AnimatedTextWidget({
    Key? key,
    required this.texts,
    required this.textStyle,
    required this.onpressed,
  }) : super(key: key);

  @override
  _AnimatedTextWidgetState createState() =>
      _AnimatedTextWidgetState(texts, textStyle, onpressed);
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  final List<String> texts;
  final TextStyle textStyle;
  Function onpressed;

  late AnimationController _controller;
  late Animation<double> _animation;
  int _currentIndex = 0;
  String _currentText = "";
  late Timer _timer;

  _AnimatedTextWidgetState(this.texts, this.textStyle, this.onpressed);

  @override
  void initState() {
    super.initState();
    _currentText = texts[_currentIndex];

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);

    // Start the animation and setup the timer
    _controller.forward();
    _startTimer();
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel(); // Cancel the timer when disposing the widget
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _currentIndex = (_currentIndex + 1) % texts.length;
      _currentText = texts[_currentIndex];
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Wrap(
            children: [
              TextButton(
                onPressed: widget.onpressed as void Function()?,
                child: Text(
                  _currentText,
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
              ),
              getIcon(_currentText),
            ],
          ),
        );
      },
    );
  }
}

// class lotttie extends StatefulWidget {
//   const lotttie({Key? key}) : super(key: key);

//   @override
//   State<lotttie> createState() => _lotttieState();
// }

// class _lotttieState extends State<lotttie> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: MouseRegion(
//           onEnter: (_) {
//             setState(() {
//               isHovered = true;
//             });
//           },
//           onExit: (_) {
//             setState(() {
//               isHovered = false;
//             });
//           },
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.grey,
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 200),
//               decoration: BoxDecoration(
//                 color: isHovered ? Colors.black : Colors.transparent,
//               ),
//               child: isHovered
//                   ? Lottie.asset('assets/images/hicon.json')
//                   : Container(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

Widget getIcon(String value) {
  if (value == "android apps") {
    return const Icon(Icons.android,
        color: Color.fromARGB(255, 47, 200, 52), size: 30);
  } else if (value == "ios apps") {
    return const Icon(Icons.apple, color: MyColors.lightGrey, size: 30);
  } else if (value == "web apps") {
    return const Icon(Icons.desktop_windows_rounded,
        color: Colors.blue, size: 30);
  } else {
    return const SizedBox.shrink(); // or return null;
  }
}

