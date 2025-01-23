import 'package:e_commerce_app_frutes/Core/utils/app_color.dart';
import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:e_commerce_app_frutes/Features/auth/presention/views/widgets/checkbox.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key, required this.onChange});
  final ValueChanged<bool> onChange;
  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  bool isAcceptedTerms = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckbox(
          onChecked: (value) {
            isAcceptedTerms = value;
            widget.onChange(value);
            setState(() {});
          },
          ischecked: isAcceptedTerms,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "خلال إنشاء حساب,فأنك توافق علي ",
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: "الشروط والأحكام الخاصة بنا",
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
