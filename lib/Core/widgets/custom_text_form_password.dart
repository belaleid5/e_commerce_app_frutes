import 'package:e_commerce_app_frutes/Core/widgets/customTextFormFiled.dart';
import 'package:flutter/material.dart';

class CustomFiledPassword extends StatefulWidget {
  const CustomFiledPassword({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<CustomFiledPassword> createState() => _CustomFiledPasswordState();
}

class _CustomFiledPasswordState extends State<CustomFiledPassword> {
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obsecureText,
      onSaved: widget.onSaved!,
      suffixIcon: GestureDetector(
        onTap: () {
          obsecureText = !obsecureText;
          setState(() {});
        },
        child: obsecureText
            ? const Icon(
                Icons.remove_red_eye,
                color: Color(0xFFC9CECF),
              )
            : const Icon(
                Icons.visibility_off_outlined,
                color: Color(0xFFC9CECF),
              ),
      ),
      keyboardType: TextInputType.visiblePassword,
      hintTitle: 'كلمة المرور',
    );
  }
}
