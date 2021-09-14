// ignore_for_file: file_names
import 'package:flutter/material.dart';

class Cloud extends StatefulWidget {
  int seconds;
  TextDirection cloudDirection;
  Cloud({Key? key, required this.seconds, required this.cloudDirection}) : super(key: key);
  @override
  _CloudState createState() => _CloudState();
}

class _CloudState extends State<Cloud> with TickerProviderStateMixin{

  late final AnimationController _controller = AnimationController(
    duration: Duration(seconds: widget.seconds),
    vsync: this,
  )..repeat();

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.fromDirection(0,3),
    end:  const Offset(-3, 0,)
  ).animate(CurvedAnimation(
    reverseCurve: Curves.linear,
    parent: _controller,
    curve: Curves.linear,
  ));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        textDirection: widget.cloudDirection,
        position: _offsetAnimation,
        child: Image.network("https://api2.iloveimg.com/v1/download/tmg546lg6jjdpy7xwmdrgzn516pr4m1f7f4xw0k7yA7tcypA258m04sdrqhgAvkdg9nkgyhjqmd4h1q6nAh24ynx6lrt5qb2jykA990mynh41ylnjplj9l2txg7fnzqjr2nqn1yl8kw5qzflhzgAzm7wdnqhgA9b3rlykg097w93tx5jfyz1",height: 100,));
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
