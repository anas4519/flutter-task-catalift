import 'package:flutter/material.dart';

class CataliftLogo extends StatelessWidget {
  const CataliftLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'CATA',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 3,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 40,
                  height: 2,
                  color: Colors.white,
                  margin: EdgeInsets.only(bottom: 2),
                ),
                Text(
                  'LIFT',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 3,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
