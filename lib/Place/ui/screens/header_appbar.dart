import 'package:flutter/material.dart';
import 'package:trip_app/widgets/gradient_back.dart';
import '../widgets/card_img_list.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[GradientBack("Welcome"), const CardImageList()],
    );
  }
}
