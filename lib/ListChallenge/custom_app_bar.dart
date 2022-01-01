import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textHeader = Container(
      alignment: Alignment.topRight,
      child: const Text(
        "Big techs",
        style: TextStyle(
            fontFamily: "Lato",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0),
      ),
      margin: const EdgeInsets.only(right: 40.0),
    );

    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: HeaderClipper(),
          child: Container(
            height: 120,
            color: Colors.blue,
          ),
        ),
        textHeader
      ],
    );
  }
}

class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    var startpoints = Offset(size.width * 0.5, size.height - 30.0);
    var startcontrolpoints = Offset(size.width * 0.25, size.height - 50.0);
    path.quadraticBezierTo(startcontrolpoints.dx, startcontrolpoints.dy,
        startpoints.dx, startpoints.dy);
    var endpoints = Offset(size.width, size.height - 80.0);
    var endcontrolpoints = Offset(size.width * 0.75, size.height);
    path.quadraticBezierTo(
        endcontrolpoints.dx, endcontrolpoints.dy, endpoints.dx, endpoints.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
