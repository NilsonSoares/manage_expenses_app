import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                color: Color(0XFF5C5DE0),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              width: 50.0,
              height: 50.0,
              decoration: const BoxDecoration(
                color: Color(0XFF5C5DE0),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 8.0),
        Container(
          width: 50.0,
          height: 104.0,
          decoration: const BoxDecoration(
            color: Color(0XFF5C5DE0),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50.0),
              bottomLeft: Radius.circular(50.0),
            ),
          ),
        )
      ],
    );
  }
}
