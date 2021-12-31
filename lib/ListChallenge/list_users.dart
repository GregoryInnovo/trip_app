import 'package:flutter/material.dart';
import 'user_card.dart';

class ListUser extends StatelessWidget {
  const ListUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      UserCard(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Apple-logo.png/640px-Apple-logo.png",
          "Apple",
          "Experience since 1976"),
      UserCard(
          "https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png",
          "Google",
          "Experience since 1998"),
      UserCard(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Microsoft_logo.svg/1200px-Microsoft_logo.svg.png",
          "Microsoft",
          "Experience since 1975"),
      UserCard(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Tesla_T_symbol.svg/1200px-Tesla_T_symbol.svg.png",
          "Tesla, Inc.",
          "Experience since 2003"),
      UserCard(
          "https://marcas-logos.net/wp-content/uploads/2020/01/Facebook-logo-1-500x313.png",
          "Facebook",
          "Experience since 2004"),
      UserCard(
          "https://i.pinimg.com/originals/60/b9/b1/60b9b11b28fde9cc13dd039ce8514076.png",
          "Netflix",
          "Experience since 1997"),
      UserCard(
          "https://logos-marcas.com/wp-content/uploads/2020/07/Airbnb-Logo.png",
          "Airbnb",
          "Experience since 2008"),
      UserCard("http://pngimg.com/uploads/uber/uber_PNG27.png", "Uber",
          "Experience since 2009"),
    ]);
  }
}
