import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

  

final title = Container(
      margin: const EdgeInsets.only(
        top: 40.0,
        left: 100.0,
      ),
      child: const Text(
        "DESIGNERS",
        style:  TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

    final menuIco = Container(
      margin: const EdgeInsets.only(
          top: 40.0,
          left: 20.0,
      ),

      child: const Icon(
        Icons.menu,
        color: Colors.white,
      ),

    );

    final gradient = Container(
      height: 120.0,
      alignment: const Alignment(-0.9, -0.6),

      decoration: BoxDecoration(
        color: Colors.blueAccent,
        image: DecorationImage(
          image: const AssetImage("assets/img/desingers1.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.blueAccent.withOpacity(0.1), 
          BlendMode.dstATop),
        )
      ),
        child: Row(
          children: <Widget>[
            menuIco,
            title,
          ],
        ),

    );

    //return gradient;
    return ClipPath(
      child: gradient,
      clipper: WaveClipper(),
    );
  }

}






/*
    var stackHeaderAppBar  =Stack(
      children: [
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 140,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/desingers1.jpg"),
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(70, 135, 190, 0.95),
                        BlendMode.srcATop
                    )
                )
            ),
            child: const Text("Designers",
              style:  TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),),
          ),
        )
      ],
    );
    return stackHeaderAppBar;
      }
  
}
    */


class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path =  Path();
    path.lineTo(0.0, size.height - 38);
    var firstStart = Offset(size.width / 6, size.height - 40);
    var firstEnd = Offset(size.width / 2 - size.width / 6, size.height - 20);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    var secondStart = Offset(size.width / 2, size.height - 5);
    var secondEnd = Offset(size.width / 2 + size.width / 6, size.height - 20);
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
    var thirdStart = Offset(size.width - (size.width / 6), size.height - 40);
    var thirdEnd = Offset(size.width, size.height - 38);
    path.quadraticBezierTo(
        thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
