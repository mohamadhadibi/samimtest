import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum SkeletonDirection { ltr, rtl, ttb, btt }

ShimmerDirection getDirection(SkeletonDirection skDirection) {
  ShimmerDirection direction;
  switch (skDirection) {
    case SkeletonDirection.ltr:
      direction = ShimmerDirection.ltr;
      break;
    case SkeletonDirection.rtl:
      direction = ShimmerDirection.rtl;
      break;
    case SkeletonDirection.btt:
      direction = ShimmerDirection.btt;
      break;
    case SkeletonDirection.ttb:
      direction = ShimmerDirection.ttb;
      break;
    default:
      direction = ShimmerDirection.ltr;
  }

  return direction;
}

class SkeletonLoader extends StatefulWidget {
  /// Number of skeleton items to show
  /// Default is 1
  final int items;

  /// A layout of how you want your skeleton to look like
  final Widget builder;

  /// Base Color of the skeleton list item
  /// Defaults to Colors.grey[300]
  final Color baseColor;

  /// Highlight Color of the skeleton list item
  /// Defaults to Colors.grey[100]
  final Color highlightColor;

  /// Highlight Color of the skeleton list item
  /// Defaults to ShimmerDirection.rtl
  final SkeletonDirection direction;

  /// Duration in which the transition takes place
  /// Defaults to Duration(seconds: 2)
  final Duration period;

  const SkeletonLoader({
    Key? key,
    this.items = 1,
    required this.builder,
    this.baseColor = const Color(0xFFE0E0E0),
    this.highlightColor = const Color(0xFFF5F5F5),
    this.direction = SkeletonDirection.ltr,
    this.period = const Duration(seconds: 2),
  }) : super(key: key);

  @override
  State<SkeletonLoader> createState() => _SkeletonLoaderState();
}

class _SkeletonLoaderState extends State<SkeletonLoader> {
  @override
  Widget build(BuildContext context) {
    ShimmerDirection direction = getDirection(widget.direction);

    return Column(
      children: [
        Expanded(child: Shimmer.fromColors(
          baseColor: widget.baseColor,
          highlightColor: widget.highlightColor,
          direction: direction,
          period: widget.period,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (_, __) => Container(
              child: widget.builder,
            ),
            itemCount: widget.items,
          ),
        )),
      ],
    );
  }
}

