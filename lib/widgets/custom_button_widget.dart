import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    Key? key,
    required this.label,
    this.backgroundColor,
    this.labelColor,
    this.leadinIcon,
  }) : super(key: key);

  final String label;
  final Color? backgroundColor;
  final Color? labelColor;
  final Widget? leadinIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(4.0))),
      height: 42.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SizedBox(
                height: 24.0,
                width: 24.0,
                child: leadinIcon,
              ),
            ),
            Flexible(
              child: Text(
                label,
                style: TextStyle(
                  color: labelColor,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
