import 'package:flutter/material.dart';

import 'samim_anim_widget.dart';

class TandemAnimateWidget extends StatefulWidget {
  const TandemAnimateWidget({Key? key, required this.children})
      : super(key: key);
  final List<Widget> children;

  @override
  State<TandemAnimateWidget> createState() => _TandemAnimateWidgetState();
}

class _TandemAnimateWidgetState extends State<TandemAnimateWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _getWidgets(),
    );
  }

  List<Widget> _getWidgets() {
    List<Widget> widgets = <Widget>[];
    for (int i = 0; i < widget.children.length; i++) {
      widgets.add(SamimAnimationWidget(
        positionInList: i + 1,
        child: widget.children[i],
      ));
    }
    return widgets;
  }
}
