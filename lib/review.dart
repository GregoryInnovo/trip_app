import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "asset/img/people.png";
  String name = "Varina Yasas";
  String details = "1 review 5 photos";
  String comment = "There is amazing in Sri Lanka";
  Review(this.pathImage, this.name, this.details, this.comment, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 20.0,
        ),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
        ));

    final userName = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(name,
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 17.0, fontFamily: "Lato")));

    final userInfo = Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text(details,
            textAlign: TextAlign.left,
            style: const TextStyle(
                fontSize: 13.0, fontFamily: "Lato", color: Color(0xFFa3a5a7))));

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: Text(comment,
          textAlign: TextAlign.left,
          style: const TextStyle(
              fontSize: 13.0, fontFamily: "Lato", fontWeight: FontWeight.w900)),
    );

    final userDetails = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[userName, userInfo, userComment]);

    return Row(children: <Widget>[photo, userDetails]);
  }
}
