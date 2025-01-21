import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

AppBar buildAppBar(context,{required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.0,
    leading: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined)),
    centerTitle: true,
    title:  Text(title,style: TextStyles.bold19,textAlign: TextAlign.center,),

  );
}
