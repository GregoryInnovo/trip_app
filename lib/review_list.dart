import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Review("assets/img/people.png", "Varuna Yasas", "1 review 5 photos",
              "There is amazing in Sri Lanka"),
          Review("assets/img/valen.jpg", "Valen Real", "6 review 10 photos",
              "There is amazing in Sri Lanka"),
          Review("assets/img/team.jpg", "Media Collab", "27 review 21 photos",
              "There is amazing in Sri Lanka"),
        ]);
  }
}
