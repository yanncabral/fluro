import 'package:fluro/design/colors.dart';
import 'package:flutter/material.dart';

class FluroActionButton extends StatelessWidget {
  const FluroActionButton({
    required this.title,
    super.key,
    this.onPressed,
  });

  final Widget title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xff2ED28D).withOpacity(0.2),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Container(
        height: 46,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: kGradientOne,
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Center(
              child: title,
            ),
          ),
        ),
      ),
    );
  }
}
