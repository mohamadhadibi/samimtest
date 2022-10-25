import 'package:flutter/material.dart';

class SamimAnimationWidget extends StatefulWidget {
  const SamimAnimationWidget({
    Key? key,
    required this.child,
    this.positionInList = 1,
  }) : super(key: key);

  final Widget child;
  final int positionInList;

  @override
  State<SamimAnimationWidget> createState() => _SamimAnimationWidgetState();
}

const int fadeDuration = 200;
const int fadeInDuration = 150;

class _SamimAnimationWidgetState extends State<SamimAnimationWidget>
    with TickerProviderStateMixin {
  late Animation<double> _fadeAnim;
  late AnimationController _controllerGo;

  @override
  void initState() {
    _controllerGo = AnimationController(
      duration: const Duration(milliseconds: fadeDuration),
      vsync: this,
    );
    _fadeAnim = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controllerGo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _startAnimation();
    return FadeTransition(
      opacity: _fadeAnim,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controllerGo.dispose();
  }

  bool _animLoadOnce = false;
  _startAnimation() async {
    if (!_animLoadOnce) {
      await Future.delayed(Duration(seconds: fadeDuration * widget.positionInList));
      _controllerGo.forward();
      _animLoadOnce = true;
    }
  }
}
