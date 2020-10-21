import 'package:flutter/material.dart';
import './Component11.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  runApp(MaterialApp(home: iPhoneXXS11Pro1()));
}

class iPhoneXXS11Pro1 extends StatelessWidget {
  iPhoneXXS11Pro1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.0, 396.0),
            child: SvgPicture.string(
              _svg_7qqfkk,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(-170.0, -96.0),
            child: Container(
              width: 678.0,
              height: 636.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xff00ffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 44.0),
            child: SizedBox(
              width: 321.0,
              height: 287.0,
              child: Component11(),
            ),
          ),
          Transform.translate(
            offset: Offset(29.0, 361.0),
            child: Container(
              width: 321.0,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 453.0),
            child: Container(
              width: 321.0,
              height: 68.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
              child: TextField(

              ),
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 584.0),
            child: Container(
              width: 321.0,
              height: 55.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color(0xff0fd8ff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),

              ),
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.blueAccent,
                child: Text(
                  "ali"
                ),
                onPressed: (){

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_7qqfkk =
    '<svg viewBox="0.0 396.0 375.0 10.0" ><path transform="translate(-205.71, -8.77)" d="M 580.7137451171875 414.7672119140625" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /><path  d="M 0 395.9575500488281" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
