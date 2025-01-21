import 'package:e_commerce_app_frutes/Core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    this.onPressed,
    required this.asset,
    required this.title,
  });
  final Function()? onPressed;
  final String asset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: const BorderSide(color: Color(0xFFDCDEDE), width: 1))),
        onPressed: onPressed,
        child: ListTile(
          visualDensity:
              const VisualDensity(vertical: VisualDensity.minimumDensity),
          leading: SvgPicture.asset(asset),
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyles.bold16,
          ),
        ),
      ),
    );
  }
}
