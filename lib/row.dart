import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class customcard extends StatelessWidget {
  final String imgpath;
  final String name;
  final Function cval;

  const customcard({Key key, this.imgpath, this.name, this.cval})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.24,
      width: size.width * 0.36,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white.withOpacity(0.5),
      ),
      child: InkWell(
        hoverColor: Colors.grey,
        splashColor: Colors.grey,
        onTap: cval,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Container(
                height: size.height * 0.12,
                width: size.width * 0.22,
                child: CircleAvatar(
                  backgroundColor: Color(0xFF0f452a).withOpacity(0.7),
                  child: SvgPicture.asset(
                    "assets/${imgpath}",
                    height: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Text("${name}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                )),
          ],
        ),
      ),
    );
  }
}
