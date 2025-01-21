import 'package:flutter/cupertino.dart';

import '../../../../../Core/utils/app_color.dart';
import '../../../../../Core/utils/app_text_styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "لاتمتلك حساب؟",
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xFF949D9E),
          ),
        ),
        Text(
          "قم بأنشاء حساب",
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
