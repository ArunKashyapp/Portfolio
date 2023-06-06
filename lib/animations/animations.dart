import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/views/styles/colors.dart';
// Import the Flutter Icons package

class AnimatedTextWidget extends StatefulWidget {
  final List<String> texts;
  final TextStyle textStyle;

  const AnimatedTextWidget({
    Key? key,
    required this.texts,
    required this.textStyle,
  }) : super(key: key);

  @override
  _AnimatedTextWidgetState createState() =>
      _AnimatedTextWidgetState(texts, textStyle);
}

class _AnimatedTextWidgetState extends State<AnimatedTextWidget>
    with SingleTickerProviderStateMixin {
  final List<String> texts;
  final TextStyle textStyle;

  late AnimationController _controller;
  late Animation<double> _animation;
  int _currentIndex = 0;
  String _currentText = "";
  late Timer _timer;

  _AnimatedTextWidgetState(this.texts, this.textStyle);

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
              Text( 
                _currentText,
                textAlign: TextAlign.center,
                style: textStyle,
              ),
              getIcon(_currentText),
            ],
          ),
        );
      },
    );
  }
}

class lotttie extends StatefulWidget {
  const lotttie({Key? key}) : super(key: key);

  @override
  State<lotttie> createState() => _lotttieState();
}

class _lotttieState extends State<lotttie> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              isHovered = true;
            });
          },
          onExit: (_) {
            setState(() {
              isHovered = false;
            });
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.grey,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: isHovered ? Colors.black : Colors.transparent,
              ),
              child: isHovered
                  ? Lottie.asset('assets/images/hicon.json')
                  : Container(),
            ),
          ),
        ),
      ),
    );
  }
}

Widget getIcon(String value) {
  if (value == "android apps") {
    return Icon(Icons.android, color: MyColors.lighterGrey, size: 30);
  } else if (value == "ios apps") {
    return Icon(Icons.apple, color: MyColors.lighterGrey, size: 30);
  } else if (value == "web apps") {
    return Icon(Icons.desktop_windows_rounded,
        color: MyColors.lighterGrey, size: 30);
  } else {
    return SizedBox.shrink(); // or return null;
  }
}


// Import the Flutter Icons package

// class TechList extends StatelessWidget {
//   final List<TechItem> techs = [
//     TechItem(name: 'Flutter', icon: Icons.access_alarm_sharp),
//     TechItem(name: 'Figma', icon: Icons.access_alarm_sharp),
//     TechItem(name: 'Firebase', icon: Icons.access_alarm_sharp),
//     TechItem(name: 'SQL', icon: Icons.access_alarm_sharp),
//     TechItem(name: 'Node.js', icon: Icons.access_alarm_sharp),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       scrollDirection: Axis.horizontal,
//       itemCount: techs.length,
//       itemBuilder: (context, index) {
//         return TechItemWidget(tech: techs[index]);
//       },
//     );
//   }
// }

// class TechItem {
//   final String name;
//   final IconData icon;

//   TechItem({required this.name, required this.icon});
// }

// class TechItemWidget extends StatefulWidget {
//   final TechItem tech;

//   TechItemWidget({required this.tech});

//   @override
//   _TechItemWidgetState createState() => _TechItemWidgetState();
// }

// class _TechItemWidgetState extends State<TechItemWidget> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         // Handle the tap gesture, navigate to the official website
//         // You can use the `launch` package to open URLs in Flutter
//         // Example: launch('https://flutter.dev');
//       },
//       onHover: (value) {
//         setState(() {
//           isHovered = value;
//         });
//       },
//       child: AnimatedContainer(
//         transform: Matrix4.identity()
//           ..rotateX(isHovered ? 0.1 : 0) // Apply 3D rotation effect on hover
//           ..rotateY(isHovered ? 0.1 : 0),
//         duration: Duration(milliseconds: 300),
//         margin: EdgeInsets.all(8.0),
//         padding: EdgeInsets.all(12.0),
//         decoration: BoxDecoration(
//           color: isHovered ? Colors.blue : Colors.grey,
//           borderRadius: BorderRadius.circular(8.0),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.3),
//               blurRadius: 10.0,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),fdq
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               widget.tech.icon,
//               color: Colors.white,
//             ),
//             SizedBox(width: 8.0),
//             Text(
//               widget.tech.name,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
