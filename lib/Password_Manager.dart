import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Password_Manager extends StatelessWidget {
  Password_Manager({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(198.0, 193.0),
            child: SizedBox(
              width: 78.0,
              height: 147.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 78.0, 147.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 8.0, 59.0, 13.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 34.0, 61.0, 16.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 0.5, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 54.0, 61.0, 16.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 0.5, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(40.0, 101.0, 35.0, 16.0),
                    size: Size(78.0, 147.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 0.5, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.0, 38.0, 28.0, 9.0),
                    size: Size(78.0, 147.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Email id',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.0, 58.0, 34.0, 9.0),
                    size: Size(78.0, 147.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(46.0, 105.0, 24.0, 9.0),
                    size: Size(78.0, 147.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 74.0, 46.0, 6.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 5,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.0, 135.0, 38.0, 6.0),
                    size: Size(78.0, 147.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 5,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(51.0, 193.0),
            child: Container(
              width: 78.0,
              height: 147.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(55.1, 201.0),
            child: SizedBox(
              width: 71.0,
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 10,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(61.0, 247.0),
            child: Container(
              width: 61.0,
              height: 16.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 0.5, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(91.0, 294.0),
            child: Container(
              width: 35.0,
              height: 16.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 0.5, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(67.2, 251.0),
            child: SizedBox(
              width: 34.0,
              child: Text(
                'Email id',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 7,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(99.3, 298.0),
            child: SizedBox(
              width: 20.0,
              child: Text(
                'Sent',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 7,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(68.4, 328.0),
            child: SizedBox(
              width: 43.0,
              child: Text(
                'Login Account',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(198.0, 390.0),
            child: SizedBox(
              width: 78.0,
              height: 147.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 78.0, 147.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 8.0, 59.0, 13.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 34.0, 61.0, 16.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 0.5, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 54.0, 61.0, 16.0),
                    size: Size(78.0, 147.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 0.5, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(40.0, 101.0, 35.0, 16.0),
                    size: Size(78.0, 147.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xffffffff),
                        border: Border.all(
                            width: 0.5, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(15.0, 38.0, 36.0, 9.0),
                    size: Size(78.0, 147.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Username',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(16.0, 58.0, 34.0, 9.0),
                    size: Size(78.0, 147.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(47.0, 105.0, 22.0, 9.0),
                    size: Size(78.0, 147.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Create',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 7,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(21.0, 135.0, 36.0, 6.0),
                    size: Size(78.0, 147.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Login Account',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 5,
                        color: const Color(0xff33303f),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(357.0, 193.0),
            child: SvgPicture.string(
              _svg_snhb2w,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(415.0, 321.0),
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(419.0, 193.0),
            child: SvgPicture.string(
              _svg_7mac7o,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(508.5, 204.0),
            child: SizedBox(
              width: 78.0,
              child: Text(
                'Enter Field Name',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 6,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(500.2, 254.0),
            child: SizedBox(
              width: 94.0,
              child: Text(
                '@jdg934.</=Ukl#)',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 8,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(567.0, 321.0),
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(570.0, 324.0),
            child: SvgPicture.string(
              _svg_jxb5eh,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(129.0, 263.3),
            child: SizedBox(
              width: 78.0,
              height: 14.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(3.8, 6.8, 73.8, 1.0),
                    size: Size(77.7, 13.6),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_rsl8oh,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 11.5, 13.6),
                    size: Size(77.7, 13.6),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_k79ra8,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(206.9, 355.3),
            child: Transform.rotate(
              angle: -1.5708,
              child: SizedBox(
                width: 56.0,
                height: 14.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(3.8, 6.8, 51.9, 1.0),
                      size: Size(55.8, 13.6),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_qngp9s,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 11.5, 13.6),
                      size: Size(55.8, 13.6),
                      pinLeft: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: SvgPicture.string(
                        _svg_k79ra8,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(271.0, 294.3),
            child: SizedBox(
              width: 86.0,
              height: 14.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 6.8, 82.2, 1.0),
                    size: Size(86.0, 13.6),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_3si4tq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(74.5, 0.0, 11.5, 13.6),
                    size: Size(86.0, 13.6),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_bdb3ij,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(428.0, 322.3),
            child: SizedBox(
              width: 86.0,
              height: 14.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 6.8, 82.2, 1.0),
                    size: Size(86.0, 13.6),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_3si4tq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(74.5, 0.0, 11.5, 13.6),
                    size: Size(86.0, 13.6),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_bdb3ij,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(549.9, 354.0),
            child: Transform.rotate(
              angle: 1.5533,
              child: SizedBox(
                width: 50.0,
                height: 14.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 6.8, 45.7, 1.0),
                      size: Size(49.6, 13.6),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_uhjwsj,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(38.1, 0.0, 11.5, 13.6),
                      size: Size(49.6, 13.6),
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: SvgPicture.string(
                        _svg_p3aq8p,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(542.0, 386.0),
            child: Container(
              width: 65.0,
              height: 24.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(536.6, 393.0),
            child: SizedBox(
              width: 77.0,
              child: Text(
                'Re- Generate',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 8,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(363.0, 214.0),
            child: SizedBox(
              width: 66.0,
              height: 35.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                    size: Size(66.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 2.0, 18.0, 6.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Google',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 5,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 13.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 15.0, 34.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'user@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 10.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Username ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 25.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 27.0, 36.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '@jdg534.</=Ukl#)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 22.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 14.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_ewszus,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 26.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_47qge4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(364.0, 254.0),
            child: SizedBox(
              width: 66.0,
              height: 35.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                    size: Size(66.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 2.0, 25.0, 6.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 5,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 13.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 15.0, 43.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'userface@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 10.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Username ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 25.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 27.0, 36.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '@jdg534.</=Ukl#)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 22.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 14.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_ewszus,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 26.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_47qge4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(508.5, 224.0),
            child: SizedBox(
              width: 78.0,
              child: Text(
                'Enter User Name',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 6,
                  color: const Color(0xff33303f),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(354.0, 22.0),
            child: SvgPicture.string(
              _svg_4w3ho,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(412.0, 150.0),
            child: Container(
              width: 15.0,
              height: 15.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(416.0, 154.0),
            child: SvgPicture.string(
              _svg_5hfidh,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(360.0, 43.0),
            child: SizedBox(
              width: 66.0,
              height: 35.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                    size: Size(66.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 2.0, 18.0, 6.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Google',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 5,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 13.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 15.0, 34.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'user@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 10.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Username ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 25.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 27.0, 36.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '@jdg534.</=Ukl#)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 22.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 14.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_ewszus,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 26.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_47qge4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(361.0, 83.0),
            child: SizedBox(
              width: 66.0,
              height: 35.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                    size: Size(66.0, 35.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 66.0, 35.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.0),
                              color: const Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 1),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 2.0, 25.0, 6.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Facebook',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 5,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 13.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 15.0, 43.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'userface@gmail.com',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 10.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Username ',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(4.0, 25.0, 58.0, 8.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.0),
                              color: const Color(0xfff0f0ff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 27.0, 36.0, 5.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            '@jdg534.</=Ukl#)',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 4,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(6.0, 22.0, 10.0, 3.0),
                          size: Size(66.0, 35.0),
                          pinLeft: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 2,
                              color: const Color(0xff33303f),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 14.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_ewszus,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(55.0, 26.0, 4.4, 5.1),
                    size: Size(66.0, 35.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (copy)' (shape)
                        SvgPicture.string(
                      _svg_47qge4,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(354.0, 22.0),
            child: SvgPicture.string(
              _svg_gcizqa,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(370.0, 32.0),
            child: Container(
              width: 29.0,
              height: 29.0,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(357.4, 64.0),
            child: SizedBox(
              width: 55.0,
              child: Text(
                'email@gmail.com',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,
                  color: const Color(0xff33303f),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(370.0, 88.0),
            child: Container(
              width: 30.0,
              height: 13.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(370.6, 92.0),
            child: SizedBox(
              width: 29.0,
              child: Text(
                'LOG OUT',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 5,
                  color: const Color(0xff33303f),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(342.9, 170.4),
            child: Transform.rotate(
              angle: 1.5708,
              child: SizedBox(
                width: 46.0,
                height: 14.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(3.2, 6.8, 42.8, 1.0),
                      size: Size(45.9, 13.6),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: SvgPicture.string(
                        _svg_6uage0,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 9.5, 13.6),
                      size: Size(45.9, 13.6),
                      pinLeft: true,
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: SvgPicture.string(
                        _svg_l2y1dk,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(309.0, 11.0),
            child: Container(
              width: 330.0,
              height: 423.0,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: const Color(0xfffe737d)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(579.0, 433.0),
            child: Container(
              width: 60.0,
              height: 17.0,
              decoration: BoxDecoration(
                color: const Color(0xfffe737d),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(573.0, 437.0),
            child: SizedBox(
              width: 72.0,
              child: Text(
                'new changes',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 8,
                  color: const Color(0xffffffff),
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_snhb2w =
    '<svg viewBox="357.0 193.0 78.0 147.0" ><path transform="translate(357.0, 193.0)" d="M 5 0 L 73 0 C 75.76142120361328 0 78 2.238576173782349 78 5 L 78 142 C 78 144.7614288330078 75.76142120361328 147 73 147 L 5 147 C 2.238576173782349 147 0 144.7614288330078 0 142 L 0 5 C 0 2.238576173782349 2.238576173782349 0 5 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7mac7o =
    '<svg viewBox="419.0 193.0 167.0 147.0" ><path transform="translate(419.0, 293.0)" d="M 7.428571701049805 35.14286041259766 L 4.857142925262451 35.14286041259766 L 4.857142925262451 32.57143020629883 C 4.857142925262451 32.25589370727539 4.601250648498535 32 4.285714626312256 32 L 3.714285850524902 32 C 3.398750066757202 32 3.142857313156128 32.25589370727539 3.142857313156128 32.57143020629883 L 3.142857313156128 35.14286041259766 L 0.5714285373687744 35.14286041259766 C 0.2558927834033966 35.14286041259766 -7.947286206899662e-08 35.39875030517578 -7.947286206899662e-08 35.71428680419922 L -7.947286206899662e-08 36.28571319580078 C -7.947286206899662e-08 36.60124969482422 0.2558927834033966 36.85714340209961 0.5714285373687744 36.85714340209961 L 3.142857313156128 36.85714340209961 L 3.142857313156128 39.42857360839844 C 3.142857313156128 39.74411010742188 3.398750066757202 40 3.714285850524902 40 L 4.285714626312256 40 C 4.601250648498535 40 4.857142925262451 39.74411010742188 4.857142925262451 39.42857360839844 L 4.857142925262451 36.85714340209961 L 7.428571701049805 36.85714340209961 C 7.744107723236084 36.85714340209961 8 36.60124969482422 8 36.28571319580078 L 8 35.71428680419922 C 8 35.39875030517578 7.744107723236084 35.14286041259766 7.428571701049805 35.14286041259766 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(508.0, 193.0)" d="M 5 0 L 73 0 C 75.76142120361328 0 78 2.238576173782349 78 5 L 78 142 C 78 144.7614288330078 75.76142120361328 147 73 147 L 5 147 C 2.238576173782349 147 0 144.7614288330078 0 142 L 0 5 C 0 2.238576173782349 2.238576173782349 0 5 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rsl8oh =
    '<svg viewBox="155.1 1321.0 73.8 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 228.91, 1321.03)" d="M 0 0 L 0 73.80867004394531" fill="none" stroke="#33303f" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k79ra8 =
    '<svg viewBox="151.3 1314.3 11.5 13.6" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 151.25, 1327.82)" d="M 6.782632827758789 0 L 13.56526660919189 11.50992298126221 L 0 11.50992298126221 Z" fill="#33303f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jxb5eh =
    '<svg viewBox="570.0 324.0 8.9 8.9" ><path transform="translate(570.0, 324.0)" d="M 7.621935844421387 0.2174236625432968 L 7.691123962402344 1.649098753929138 C 6.877725124359131 0.6895509362220764 5.683013916015625 0.1369296312332153 4.425098896026611 0.1383767575025558 C 2.330428838729858 0.1383762359619141 0.5865422487258911 1.641834139823914 0.2125804871320724 3.629262924194336 C 0.2013808339834213 3.689886569976807 0.2177093178033829 3.752351522445679 0.2571434080600739 3.799739122390747 C 0.296577513217926 3.847126960754395 0.3550360202789307 3.874533176422119 0.4166854619979858 3.874534845352173 L 1.2651047706604 3.874534606933594 C 1.361397504806519 3.874430418014526 1.444974184036255 3.808113098144531 1.466961026191711 3.714364290237427 C 1.749683141708374 2.541025876998901 2.699185371398926 1.645705580711365 3.88709282875061 1.432332158088684 C 5.075000762939453 1.218958854675293 6.276732921600342 1.727872014045715 6.950119018554688 2.729471683502197 L 5.195163249969482 2.645407676696777 C 5.138426303863525 2.642709732055664 5.083062171936035 2.663380861282349 5.041976928710938 2.702603101730347 C 5.00089168548584 2.741825103759766 4.977675437927246 2.796171188354492 4.977738857269287 2.852972030639648 L 4.977738857269287 3.673024415969849 C 4.977738857269287 3.787659168243408 5.070669174194336 3.88058876991272 5.185303211212158 3.88058876991272 L 8.648514747619629 3.88058876991272 C 8.763149261474609 3.88058876991272 8.8560791015625 3.787659168243408 8.8560791015625 3.673024415969849 L 8.8560791015625 0.2075643539428711 C 8.8560791015625 0.09292972087860107 8.763149261474609 0 8.648514747619629 0 L 7.829154491424561 0 C 7.772414207458496 3.02861662930809e-05 7.718158721923828 0.02328811399638653 7.679012775421143 0.06436245888471603 C 7.639865398406982 0.1054368168115616 7.619240760803223 0.1607465296983719 7.621935844421387 0.2174236178398132 Z M 4.425098896026611 7.472316741943359 C 3.411510705947876 7.473184585571289 2.464274168014526 6.968424797058105 1.899733066558838 6.126608371734619 L 3.660570383071899 6.210844039916992 C 3.717307567596436 6.213542461395264 3.772671461105347 6.192871570587158 3.813756704330444 6.15364933013916 C 3.854841709136963 6.114426612854004 3.878057956695557 6.060081481933594 3.877994298934937 6.003279685974121 L 3.877994298934937 5.183401107788086 C 3.877994298934937 5.068766593933105 3.785064458847046 4.975836753845215 3.670429944992065 4.975836753845215 L 0.2075643539428711 4.975836753845215 C 0.09292972087860107 4.975836753845215 -3.299146555946209e-08 5.068766593933105 0 5.183401107788086 L 0 8.648514747619629 C 0 8.763149261474609 0.09292973577976227 8.8560791015625 0.2075643688440323 8.8560791015625 L 1.026578664779663 8.8560791015625 C 1.083474397659302 8.85615062713623 1.137905240058899 8.832864761352539 1.177143692970276 8.79166316986084 C 1.216382145881653 8.750462532043457 1.236987948417664 8.694961547851563 1.234142899513245 8.638136863708496 L 1.162360310554504 7.209920883178711 C 1.975588083267212 8.167476654052734 3.168813943862915 8.718892097473145 4.425098896026611 8.717702865600586 C 6.519942760467529 8.717702865600586 8.263829231262207 7.214244842529297 8.637790679931641 5.226816177368164 C 8.648991584777832 5.166192531585693 8.632663726806641 5.1037278175354 8.593228340148926 5.056339740753174 C 8.553793907165527 5.008952140808105 8.495335578918457 4.981545925140381 8.433685302734375 4.981544494628906 L 7.585267066955566 4.981544494628906 C 7.488974571228027 4.981649398803711 7.405398368835449 5.047966480255127 7.383410930633545 5.141715049743652 C 7.054591178894043 6.509013652801514 5.831380367279053 7.472677230834961 4.425098896026611 7.472316265106201 Z" fill="#707070" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_qngp9s =
    '<svg viewBox="155.1 1321.0 51.9 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 207.05, 1321.03)" d="M 0 0 L 0 51.94673156738281" fill="none" stroke="#33303f" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3si4tq =
    '<svg viewBox="0.0 6.8 82.2 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 82.15, 6.78)" d="M 0 82.15019226074219 L 0 0" fill="none" stroke="#33303f" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bdb3ij =
    '<svg viewBox="74.5 0.0 11.5 13.6" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 86.0, 0.0)" d="M 6.782632827758789 0 L 13.56526660919189 11.50992298126221 L 0 11.50992298126221 Z" fill="#33303f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_uhjwsj =
    '<svg viewBox="0.0 6.8 45.7 1.0" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 45.73, 6.78)" d="M 0 45.72889709472656 L 0 0" fill="none" stroke="#33303f" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_p3aq8p =
    '<svg viewBox="38.1 0.0 11.5 13.6" ><path transform="matrix(0.0, 1.0, -1.0, 0.0, 49.58, 0.0)" d="M 6.782632827758789 0 L 13.56526660919189 11.50992298126221 L 0 11.50992298126221 Z" fill="#33303f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ewszus =
    '<svg viewBox="-32.0 1190.0 4.4 5.1" ><path transform="translate(-32.0, 1190.0)" d="M 4.280561447143555 0.6521302461624146 L 3.768777132034302 0.1390379369258881 C 3.679981231689453 0.05001401156187057 3.559547901153564 6.03613443672657e-07 3.43397068977356 0 L 1.736131906509399 0 C 1.474627137184143 0 1.262641429901123 0.2125275582075119 1.262641429901123 0.474700927734375 L 1.262641429901123 0.94940185546875 L 0.4734905362129211 0.94940185546875 C 0.2119856476783752 0.94940185546875 0 1.161929368972778 0 1.424102783203125 L 0 4.588775634765625 C 0 4.850948810577393 0.2119856476783752 5.0634765625 0.4734905362129211 5.0634765625 L 2.683112859725952 5.0634765625 C 2.944617986679077 5.0634765625 3.156603336334229 4.850948810577393 3.156603336334229 4.588775634765625 L 3.156603336334229 4.11407470703125 L 3.945754289627075 4.11407470703125 C 4.207259178161621 4.11407470703125 4.419244766235352 3.901547193527222 4.419244766235352 3.639373779296875 L 4.419244766235352 0.9877932667732239 C 4.41924524307251 0.8618975877761841 4.369359970092773 0.7411558032035828 4.280563354492188 0.6521321535110474 Z M 2.623926639556885 4.588775634765625 L 0.5326768159866333 4.588775634765625 C 0.4999890923500061 4.588775634765625 0.4734905362129211 4.562209129333496 0.4734905362129211 4.529438018798828 L 0.4734905362129211 1.483440279960632 C 0.4734905362129211 1.450669169425964 0.4999890923500061 1.424102783203125 0.5326768159866333 1.424102783203125 L 1.262641429901123 1.424102783203125 L 1.262641429901123 3.639373779296875 C 1.262641429901123 3.901547193527222 1.474627137184143 4.11407470703125 1.736131906509399 4.11407470703125 L 2.683112859725952 4.11407470703125 L 2.683112859725952 4.529438018798828 C 2.683112859725952 4.562209129333496 2.656614303588867 4.588775634765625 2.623926639556885 4.588775634765625 Z M 3.886567831039429 3.639373779296875 L 1.795318245887756 3.639373779296875 C 1.762630581855774 3.639373779296875 1.736131906509399 3.612807273864746 1.736131906509399 3.580035924911499 L 1.736131906509399 0.5340385437011719 C 1.736131906509399 0.5012671947479248 1.762630581855774 0.474700927734375 1.795318245887756 0.474700927734375 L 2.840943098068237 0.474700927734375 L 2.840943098068237 1.344985961914063 C 2.840943098068237 1.476072669029236 2.946935892105103 1.58233630657196 3.077688217163086 1.58233630657196 L 3.945754289627075 1.58233630657196 L 3.945754289627075 3.580035924911499 C 3.945754766464233 3.612807273864746 3.919255971908569 3.639373779296875 3.886568069458008 3.639373779296875 Z M 3.945754289627075 1.107635498046875 L 3.314433574676514 1.107635498046875 L 3.314433574676514 0.474700927734375 L 3.409447193145752 0.474700927734375 C 3.425141334533691 0.474700927734375 3.440194368362427 0.4809511303901672 3.451302051544189 0.4920769035816193 L 3.928422451019287 0.9704171419143677 C 3.939522504806519 0.9815467596054077 3.945755958557129 0.9966408014297485 3.945754766464233 1.012378811836243 L 3.945754289627075 1.107635498046875 Z" fill="#6161fd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_47qge4 =
    '<svg viewBox="-32.0 1202.0 4.4 5.1" ><path transform="translate(-32.0, 1202.0)" d="M 4.280561447143555 0.6521302461624146 L 3.768777132034302 0.1390379369258881 C 3.679981231689453 0.05001401156187057 3.559547901153564 6.03613443672657e-07 3.43397068977356 0 L 1.736131906509399 0 C 1.474627137184143 0 1.262641429901123 0.2125275582075119 1.262641429901123 0.474700927734375 L 1.262641429901123 0.94940185546875 L 0.4734905362129211 0.94940185546875 C 0.2119856476783752 0.94940185546875 0 1.161929368972778 0 1.424102783203125 L 0 4.588775634765625 C 0 4.850948810577393 0.2119856476783752 5.0634765625 0.4734905362129211 5.0634765625 L 2.683112859725952 5.0634765625 C 2.944617986679077 5.0634765625 3.156603336334229 4.850948810577393 3.156603336334229 4.588775634765625 L 3.156603336334229 4.11407470703125 L 3.945754289627075 4.11407470703125 C 4.207259178161621 4.11407470703125 4.419244766235352 3.901547193527222 4.419244766235352 3.639373779296875 L 4.419244766235352 0.9877932667732239 C 4.41924524307251 0.8618975877761841 4.369359970092773 0.7411558032035828 4.280563354492188 0.6521321535110474 Z M 2.623926639556885 4.588775634765625 L 0.5326768159866333 4.588775634765625 C 0.4999890923500061 4.588775634765625 0.4734905362129211 4.562209129333496 0.4734905362129211 4.529438018798828 L 0.4734905362129211 1.483440279960632 C 0.4734905362129211 1.450669169425964 0.4999890923500061 1.424102783203125 0.5326768159866333 1.424102783203125 L 1.262641429901123 1.424102783203125 L 1.262641429901123 3.639373779296875 C 1.262641429901123 3.901547193527222 1.474627137184143 4.11407470703125 1.736131906509399 4.11407470703125 L 2.683112859725952 4.11407470703125 L 2.683112859725952 4.529438018798828 C 2.683112859725952 4.562209129333496 2.656614303588867 4.588775634765625 2.623926639556885 4.588775634765625 Z M 3.886567831039429 3.639373779296875 L 1.795318245887756 3.639373779296875 C 1.762630581855774 3.639373779296875 1.736131906509399 3.612807273864746 1.736131906509399 3.580035924911499 L 1.736131906509399 0.5340385437011719 C 1.736131906509399 0.5012671947479248 1.762630581855774 0.474700927734375 1.795318245887756 0.474700927734375 L 2.840943098068237 0.474700927734375 L 2.840943098068237 1.344985961914063 C 2.840943098068237 1.476072669029236 2.946935892105103 1.58233630657196 3.077688217163086 1.58233630657196 L 3.945754289627075 1.58233630657196 L 3.945754289627075 3.580035924911499 C 3.945754766464233 3.612807273864746 3.919255971908569 3.639373779296875 3.886568069458008 3.639373779296875 Z M 3.945754289627075 1.107635498046875 L 3.314433574676514 1.107635498046875 L 3.314433574676514 0.474700927734375 L 3.409447193145752 0.474700927734375 C 3.425141334533691 0.474700927734375 3.440194368362427 0.4809511303901672 3.451302051544189 0.4920769035816193 L 3.928422451019287 0.9704171419143677 C 3.939522504806519 0.9815467596054077 3.945755958557129 0.9966408014297485 3.945754766464233 1.012378811836243 L 3.945754289627075 1.107635498046875 Z" fill="#6161fd" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_4w3ho =
    '<svg viewBox="354.0 22.0 78.0 183.0" ><path transform="translate(363.0, 140.0)" d="M 0.190624013543129 60.85780715942383 L 5.146848678588867 60.85780715942383 C 5.252132415771484 60.85780715942383 5.337471961975098 60.77246856689453 5.337471961975098 60.66718292236328 L 5.337471961975098 60.19062423706055 C 5.337471961975098 60.08534240722656 5.252132415771484 60 5.146848678588867 60 L 0.190624013543129 60 C 0.0853399932384491 60 0 60.08534240722656 0 60.19062423706055 L 0 60.66718292236328 C 0 60.77246856689453 0.0853399932384491 60.85780715942383 0.190624013543129 60.85780715942383 Z M 0.190624013543129 62.7640495300293 L 5.146848678588867 62.7640495300293 C 5.252132415771484 62.7640495300293 5.337471961975098 62.6787109375 5.337471961975098 62.57342147827148 L 5.337471961975098 62.09686660766602 C 5.337471961975098 61.99158096313477 5.252132415771484 61.90624237060547 5.146848678588867 61.90624237060547 L 0.190624013543129 61.90624237060547 C 0.0853399932384491 61.90624237060547 0 61.99158096313477 0 62.09686660766602 L 0 62.57342147827148 C 0 62.6787109375 0.0853399932384491 62.7640495300293 0.190624013543129 62.7640495300293 Z M 0.190624013543129 64.6702880859375 L 5.146848678588867 64.6702880859375 C 5.252132415771484 64.6702880859375 5.337471961975098 64.58494567871094 5.337471961975098 64.47966766357422 L 5.337471961975098 64.00310516357422 C 5.337471961975098 63.8978157043457 5.252132415771484 63.81247711181641 5.146848678588867 63.81247711181641 L 0.190624013543129 63.81247711181641 C 0.0853399932384491 63.81247711181641 0 63.8978157043457 0 64.00310516357422 L 0 64.47966766357422 C 0 64.58494567871094 0.0853399932384491 64.6702880859375 0.190624013543129 64.6702880859375 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(424.0, 200.0)" d="M 4.932002067565918 4.323558330535889 L 3.958297491073608 3.349854469299316 C 3.91434907913208 3.305906057357788 3.854774236679077 3.281490325927734 3.792269945144653 3.281490325927734 L 3.633078336715698 3.281490325927734 C 3.902629613876343 2.93673849105835 4.062797069549561 2.50311279296875 4.062797069549561 2.03139853477478 C 4.062797069549561 0.9092462062835693 3.15355110168457 0 2.03139853477478 0 C 0.9092462062835693 0 0 0.9092462062835693 0 2.03139853477478 C 0 3.15355110168457 0.9092462062835693 4.062797069549561 2.03139853477478 4.062797069549561 C 2.50311279296875 4.062797069549561 2.93673849105835 3.902629613876343 3.281490325927734 3.633078336715698 L 3.281490325927734 3.792269945144653 C 3.281490325927734 3.854774236679077 3.305906057357788 3.91434907913208 3.349854469299316 3.958297491073608 L 4.323558330535889 4.932002067565918 C 4.415362358093262 5.023805141448975 4.5638108253479 5.023805141448975 4.654637336730957 4.932002067565918 L 4.93102502822876 4.655614376068115 C 5.022828102111816 4.5638108253479 5.022828102111816 4.415362358093262 4.932002067565918 4.323558330535889 Z M 2.03139853477478 3.281490325927734 C 1.3409184217453 3.281490325927734 0.7813071608543396 2.72285532951355 0.7813071608543396 2.03139853477478 C 0.7813071608543396 1.3409184217453 1.3399418592453 0.7813071608543396 2.03139853477478 0.7813071608543396 C 2.721879005432129 0.7813071608543396 3.281490325927734 1.3399418592453 3.281490325927734 2.03139853477478 C 3.281490325927734 2.721879005432129 2.72285532951355 3.281490325927734 2.03139853477478 3.281490325927734 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(354.0, 22.0)" d="M 5 0 L 73 0 C 75.76142120361328 0 78 2.238576173782349 78 5 L 78 142 C 78 144.7614288330078 75.76142120361328 147 73 147 L 5 147 C 2.238576173782349 147 0 144.7614288330078 0 142 L 0 5 C 0 2.238576173782349 2.238576173782349 0 5 0 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5hfidh =
    '<svg viewBox="416.0 154.0 8.0 8.0" ><path transform="translate(416.0, 122.0)" d="M 7.428571701049805 35.14286041259766 L 4.857142925262451 35.14286041259766 L 4.857142925262451 32.57143020629883 C 4.857142925262451 32.25589370727539 4.601250648498535 32 4.285714626312256 32 L 3.714285850524902 32 C 3.398750066757202 32 3.142857313156128 32.25589370727539 3.142857313156128 32.57143020629883 L 3.142857313156128 35.14286041259766 L 0.5714285373687744 35.14286041259766 C 0.2558927834033966 35.14286041259766 -7.947286206899662e-08 35.39875030517578 -7.947286206899662e-08 35.71428680419922 L -7.947286206899662e-08 36.28571319580078 C -7.947286206899662e-08 36.60124969482422 0.2558927834033966 36.85714340209961 0.5714285373687744 36.85714340209961 L 3.142857313156128 36.85714340209961 L 3.142857313156128 39.42857360839844 C 3.142857313156128 39.74411010742188 3.398750066757202 40 3.714285850524902 40 L 4.285714626312256 40 C 4.601250648498535 40 4.857142925262451 39.74411010742188 4.857142925262451 39.42857360839844 L 4.857142925262451 36.85714340209961 L 7.428571701049805 36.85714340209961 C 7.744107723236084 36.85714340209961 8 36.60124969482422 8 36.28571319580078 L 8 35.71428680419922 C 8 35.39875030517578 7.744107723236084 35.14286041259766 7.428571701049805 35.14286041259766 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_gcizqa =
    '<svg viewBox="354.0 22.0 78.0 147.0" ><path transform="translate(421.0, 29.0)" d="M 4.932002067565918 4.323558330535889 L 3.958297491073608 3.349854469299316 C 3.91434907913208 3.305906057357788 3.854774236679077 3.281490325927734 3.792269945144653 3.281490325927734 L 3.633078336715698 3.281490325927734 C 3.902629613876343 2.93673849105835 4.062797069549561 2.50311279296875 4.062797069549561 2.03139853477478 C 4.062797069549561 0.9092462062835693 3.15355110168457 0 2.03139853477478 0 C 0.9092462062835693 0 0 0.9092462062835693 0 2.03139853477478 C 0 3.15355110168457 0.9092462062835693 4.062797069549561 2.03139853477478 4.062797069549561 C 2.50311279296875 4.062797069549561 2.93673849105835 3.902629613876343 3.281490325927734 3.633078336715698 L 3.281490325927734 3.792269945144653 C 3.281490325927734 3.854774236679077 3.305906057357788 3.91434907913208 3.349854469299316 3.958297491073608 L 4.323558330535889 4.932002067565918 C 4.415362358093262 5.023805141448975 4.5638108253479 5.023805141448975 4.654637336730957 4.932002067565918 L 4.93102502822876 4.655614376068115 C 5.022828102111816 4.5638108253479 5.022828102111816 4.415362358093262 4.932002067565918 4.323558330535889 Z M 2.03139853477478 3.281490325927734 C 1.3409184217453 3.281490325927734 0.7813071608543396 2.72285532951355 0.7813071608543396 2.03139853477478 C 0.7813071608543396 1.3409184217453 1.3399418592453 0.7813071608543396 2.03139853477478 0.7813071608543396 C 2.721879005432129 0.7813071608543396 3.281490325927734 1.3399418592453 3.281490325927734 2.03139853477478 C 3.281490325927734 2.721879005432129 2.72285532951355 3.281490325927734 2.03139853477478 3.281490325927734 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /><path transform="translate(354.0, 22.0)" d="M 5 0 L 73 0 C 75.76142120361328 0 78 2.238576173782349 78 5 L 78 142 C 78 144.7614288330078 75.76142120361328 147 73 147 L 5 147 C 2.238576173782349 147 0 144.7614288330078 0 142 L 0 5 C 0 2.238576173782349 2.238576173782349 0 5 0 Z" fill="#817d7d" fill-opacity="0.64" stroke="none" stroke-width="1" stroke-opacity="0.64" stroke-miterlimit="4" stroke-linecap="butt" /><path transform="translate(355.0, 23.0)" d="M 3.821776866912842 0 L 55.79794311523438 0 C 57.90864944458008 0 59.61971664428711 2.208935499191284 59.61971664428711 4.93379545211792 L 59.61971664428711 140.1197967529297 C 59.61971664428711 142.8446655273438 57.90864944458008 145.0535888671875 55.79794311523438 145.0535888671875 L 3.821776866912842 145.0535888671875 C 1.711067676544189 145.0535888671875 0 142.8446655273438 0 140.1197967529297 L 0 4.93379545211792 C 0 2.208935499191284 1.711067676544189 0 3.821776866912842 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6uage0 =
    '<svg viewBox="3.2 6.8 42.8 1.0" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 3.17, 6.78)" d="M 0 42.77305603027344 L 0 0" fill="none" stroke="#33303f" stroke-width="4" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l2y1dk =
    '<svg viewBox="0.0 0.0 9.5 13.6" ><path transform="matrix(0.0, -1.0, 1.0, 0.0, 0.0, 13.57)" d="M 6.782632827758789 0 L 13.56526660919189 9.477295875549316 L 0 9.477295875549316 Z" fill="#33303f" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
