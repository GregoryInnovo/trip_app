import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child: const Icon(Icons.star_half, color: Color(0xFFf2C611)));

    final star_border = Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child: const Icon(Icons.star_border, color: Color(0xFFf2C611)));

    final star = Container(
        margin: const EdgeInsets.only(top: 323.0, right: 3.0),
        child: const Icon(Icons.star, color: Color(0xFFf2C611)));

    final title_stars = Row(children: <Widget>[
      Container(
          margin: const EdgeInsets.only(
            top: 330.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: const TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          )),
      Row(
        children: <Widget>[
          star,
          star,
          star,
          star_half,
          star_border,
        ],
      ),
    ]);

    final text_description = Container(
        margin: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 20.0,
        ),
        child: Text(descriptionPlace,
            style: const TextStyle(
                fontFamily: "Lato",
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                color: Color(0xFF56575a))));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        title_stars,
        text_description,
        ButtonPurple("Navigate")
      ],
    );
  }
}
