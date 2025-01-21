import 'package:flutter/material.dart';

import '../../../../../Core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(
            "او",
            style: TextStyles.semiBold16,
          ),
        ),
        Expanded(
          child: Divider(
            color: Color(0xFFDCDEDE),
          ),
        ),
      ],
    );
  }
}
