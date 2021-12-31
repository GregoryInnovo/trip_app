import 'package:flutter/material.dart';
import 'ListChallenge/list_view_challenge.dart';

class ButtonPurple extends StatelessWidget {
  String buttonText = "Navigate";
  ButtonPurple(this.buttonText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: InkWell(
            onTap: () {
              // ScaffoldMessenger.of(context)
              //     .showSnackBar(const SnackBar(content: Text("Navegando")));
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return const ListViewChallenge();
                },
              ));
            },
            child: Container(
                height: 50.0,
                width: 180.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    gradient: const LinearGradient(
                        colors: [
                          Color(0xFF4268D3),
                          Color(0xFF584CD1),
                        ],
                        begin: FractionalOffset(0.2, 0.0),
                        end: FractionalOffset(1.0, 0.6),
                        stops: [0.0, 0.6],
                        tileMode: TileMode.clamp)),
                child: Center(
                    child: Text(buttonText,
                        style: const TextStyle(
                            fontSize: 18.0,
                            fontFamily: "Lato",
                            color: Colors.white))))));
  }
}

class ExampleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 220);
    path.quadraticBezierTo(size.width / 4, 160, size.width / 2, 175);
    path.quadraticBezierTo(3 / 4 * size.width, 190, size.width, 130);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
