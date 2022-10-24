import 'package:flutter/material.dart';

class FadeTransitionBuilder extends PageTransitionsBuilder {
  const FadeTransitionBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return _FadeTransitionBuilder(fadeAnimation: animation, child: child);
  }
}

class _FadeTransitionBuilder extends StatelessWidget {
  _FadeTransitionBuilder({
    required Animation<double> fadeAnimation,
    required this.child,
  }) : _opacityAnimation = fadeAnimation.drive(_fastLinearToSlowEaseIn);

  static final Animatable<double> _fastLinearToSlowEaseIn =
      CurveTween(curve: Curves.fastLinearToSlowEaseIn);

  final Animation<double> _opacityAnimation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: child,
    );
  }
}
