import 'package:flutter/cupertino.dart';

import '../../../../../Core/utils/app_color.dart';
import '../../../../../Core/utils/app_text_styles.dart';

class DontOrHaveAnAccount extends StatelessWidget {
  const DontOrHaveAnAccount({
    super.key,
    required this.tilte,
    required this.navTitle,
    required this.titleRout,
  });

  final String tilte;
  final String navTitle;
  final String titleRout;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tilte,
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xFF949D9E),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, titleRout);
          },
          child: Text(
            navTitle,
            style: TextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
