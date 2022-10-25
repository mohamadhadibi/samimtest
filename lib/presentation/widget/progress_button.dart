import 'package:flutter/material.dart';

import '../app/resources/app_colors.dart';

class ProgressButton extends StatelessWidget {
  const ProgressButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isLoading,
    this.width,
    this.radius,
    this.color,
    this.textColor,
    this.isEnable = true,
  }) : super(key: key);

  final Function onPressed;
  final String text;
  final bool isLoading;
  final Color? color;
  final Color? textColor;
  final double? width;
  final double? radius;
  final bool isEnable;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: (width == null) ? 248 : width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(16, 56),
              primary: color ?? accent(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(radius == null ? 100 : radius!)),
              ),
            ),
            onPressed: () =>
                (isEnable && isLoading == false) ? onPressed() : null,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: textColor ?? AppColors.white),
            ),
          ),
        ),
        PositionedDirectional(
          start: 8,
          top: 0,
          bottom: 0,
          child: Visibility(
            visible: isLoading,
            child: Center(
              child: Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                width: 16,
                height: 16,
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(AppColors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
