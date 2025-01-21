import 'package:flutter/cupertino.dart';

import '../../../../../Core/utils/app_color.dart';
import '../../../../../Core/utils/app_text_styles.dart';

class CustomResetPassword extends StatelessWidget {
  const CustomResetPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "نسيت كلمة المرور ؟",
          style: TextStyles.semiBold13.copyWith(
            color: AppColors.lightPrimaryColor,
          ),
        ),
      ],
    );
  }
}
