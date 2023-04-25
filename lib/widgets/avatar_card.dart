import 'package:flutter/material.dart';

import '../shared/constants.dart';

class AvatarCard extends StatelessWidget {
  const AvatarCard({
    super.key,
    required this.title
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "“All people are the same; only their habits differ.” - Confucius",
              style: TextStyle(
                fontSize: ksmallFontSize,
                color: ksecondryLightColor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: kbigFontSize,
                fontWeight: FontWeight.bold,
                color: kprimaryColor,
              ),
            )

          ],
        )
      ],
    );
  }
}
