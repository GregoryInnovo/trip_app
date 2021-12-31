import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  String urlImg =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Apple-logo.png/640px-Apple-logo.png";
  String bussinessName = "Apple";
  String bussinessExperience = "Experiencie since 1999";

  UserCard(this.urlImg, this.bussinessName, this.bussinessExperience,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userPhoto = Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(urlImg),
            )));

    final uName = Container(
        child: Text(bussinessName,
            style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)));

    final uExperience = Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Text(bussinessExperience,
            style: const TextStyle(fontWeight: FontWeight.w300)));

    final containerDetail = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[uName, uExperience]);

    final iconReview = Container(
        child: Icon(Icons.remove_red_eye_outlined,
            size: 50.0, color: Colors.black26));

    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[userPhoto, containerDetail, iconReview]),
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black26),
        ),
      ),
    );
  }
}
