import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:password_manager_project/Login.dart';

class Forgot_Password extends StatelessWidget {
  final formkey = GlobalKey<FormState>();

  Forgot_Password({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Form(
        key: formkey,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(75.0, 794.2, 262.2, 25.8),
              size: Size(412.0, 847.0),
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.8, 181.0, 20.0),
                    size: Size(262.2, 25.8),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Let\'s login in your account',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        color: const Color(0xff263238),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(186.0, 0.0, 76.2, 25.8),
                    size: Size(262.2, 25.8),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_kjjpon,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                      child: Pinned.fromSize(
                        bounds: Rect.fromLTWH(195.0, 2.8, 59.0, 20.0),
                        size: Size(262.2, 25.8),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: const Color(0xff304ffe),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      }),
                ],
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(31.0, 40.0, 350.0, 600.0),
              size: Size(412.0, 847.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              fixedHeight: true,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 350.0, 600.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: const Color(0xffffffff),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.0, 310.0, 277.0, 80.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Container(
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        // obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                width: 2, color: const Color(0xffaa00ff)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: const Color(0xffaa00ff)),
                          hintText: 'example@gmai.com',
                        ),
                        validator: (value) => EmailValidator.validate(value)
                            ? null
                            : "Please enter a valid email",
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.0, 76.0, 270.0, 66.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Oops ! Please re-enter your registered email id to reset your password',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        color: const Color(0xff2f2e41),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.0, 33.0, 236.0, 40.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Forgot Password ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 30,
                        color: const Color(0xff2f2e41),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(200.0, 540.0, 133.4, 48.0),
                    size: Size(350.0, 600.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 133.4, 48.0),
                          size: Size(133.4, 48.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_ymwx5w,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        GestureDetector(
                          child: Pinned.fromSize(
                            bounds: Rect.fromLTWH(18.0, 9.0, 96.4, 30.0),
                            size: Size(133.4, 48.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(67.6, 3.7, 28.8, 21.6),
                                  size: Size(96.4, 30.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child:
                                      // Adobe XD layer: 'FontAwsome (hand-po…' (shape)
                                      SvgPicture.string(
                                    _svg_7o4y83,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 62.0, 30.0),
                                  size: Size(96.4, 30.0),
                                  pinLeft: true,
                                  fixedWidth: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'SENT',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      color: const Color(0xffaa00ff),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            print(formkey.currentState.validate());
                          },
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(94.0, 145.0, 162.4, 120.2),
                    size: Size(350.0, 600.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(123.9, 70.7, 35.5, 37.4),
                          size: Size(162.4, 120.2),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 14.5, 11.4, 17.3),
                                size: Size(35.5, 37.4),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_545nhs,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.2, 14.5, 3.7, 17.3),
                                size: Size(35.5, 37.4),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_68upe3,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.1, 6.4, 21.5, 26.3),
                                size: Size(35.5, 37.4),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_7w6m6q,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(24.5, 0.0, 5.6, 6.5),
                                size: Size(35.5, 37.4),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_d8bt5k,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(22.5, 7.4, 7.3, 4.8),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_jcrsqm,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.7, 16.9, 7.2, 4.7),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_n3vd84,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.7, 22.8, 7.3, 4.7),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_4orn4i,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(18.4, 5.7, 4.7, 7.6),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_hqdt5r,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(9.4, 12.1, 4.8, 7.1),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_bxu1xg,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.0, 20.4, 4.7, 7.4),
                                size: Size(35.5, 37.4),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_dmm8wk,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(24.5, 0.0, 5.6, 6.5),
                                size: Size(35.5, 37.4),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_7pfj5e,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(22.5, 7.4, 7.3, 4.8),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_nmumrc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.7, 16.9, 7.2, 4.7),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_eibttq,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.7, 22.8, 7.3, 4.7),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_iwczx8,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(18.4, 5.7, 4.7, 7.6),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_5b9ys5,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(9.4, 12.1, 4.8, 7.1),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_1gvs1e,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(2.0, 20.4, 4.7, 7.4),
                                size: Size(35.5, 37.4),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_9e1jz6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(8.6, 11.1, 21.5, 26.3),
                                size: Size(35.5, 37.4),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_hzlg74,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(30.0, 4.9, 5.4, 6.2),
                                size: Size(35.5, 37.4),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_shbv9x,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.0, 12.2, 7.1, 4.7),
                                size: Size(35.5, 37.4),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_xxoxjf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(21.3, 21.6, 7.2, 4.7),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_v8ga98,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(13.2, 27.5, 7.3, 4.7),
                                size: Size(35.5, 37.4),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_ymg8sp,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(23.9, 10.4, 4.7, 7.6),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_724hkp,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.1, 17.0, 4.7, 6.9),
                                size: Size(35.5, 37.4),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_kx94l3,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.6, 25.4, 4.7, 7.1),
                                size: Size(35.5, 37.4),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_utpwcb,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(1.8, 63.7, 144.0, 30.5),
                          size: Size(162.4, 120.2),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_cfxa54,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.9, 0.0, 156.5, 20.2),
                          size: Size(162.4, 120.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_4w4095,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 40.7, 156.0, 24.5),
                          size: Size(162.4, 120.2),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_g1fy71,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.4, 20.3, 162.1, 20.2),
                          size: Size(162.4, 120.2),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_3n9io5,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(21.4, 3.5, 117.6, 116.7),
                          size: Size(162.4, 120.2),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_u9rl6t,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(56.1, 41.7, 34.9, 60.7),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_98oe3z,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(56.1, 41.7, 34.9, 60.7),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ky8aq7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(59.9, 41.3, 24.9, 21.3),
                          size: Size(162.4, 120.2),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_4wp13d,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(52.7, 18.7, 42.9, 42.9),
                          size: Size(162.4, 120.2),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffdc2cc),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(52.7, 18.7, 42.9, 42.9),
                          size: Size(162.4, 120.2),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x08000000),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(23.5, 63.1, 113.5, 57.0),
                          size: Size(162.4, 120.2),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_n23mv7,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(72.7, 63.1, 26.6, 57.0),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_v2dsiu,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(72.7, 63.1, 26.6, 57.0),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_rfsz3d,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(38.8, 97.6, 7.3, 22.6),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_yzehkg,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(112.6, 105.8, 2.0, 14.4),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_ih7iim,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.3, 57.0, 37.1, 63.2),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_xo371j,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(40.0, 57.0, 37.1, 63.2),
                          size: Size(162.4, 120.2),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_sdbyx8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(80.3, 27.7, 0.9, 0.9),
                          size: Size(162.4, 120.2),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x26ffffff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(78.2, 28.6, 0.9, 0.9),
                          size: Size(162.4, 120.2),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0x26ffffff),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(51.9, 6.0, 53.6, 49.6),
                          size: Size(162.4, 120.2),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_7fvy4l,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(51.9, 5.6, 53.6, 49.6),
                          size: Size(162.4, 120.2),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_3fr4z2,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(40.0, 410.0, 270.0, 44.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Text(
                      '*We\'ll just sent an instruction to reset your password.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 17,
                        color: const Color(0xffaa00ff),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const String _svg_kjjpon =
    '<svg viewBox="261.0 794.2 76.2 25.8" ><path transform="translate(261.0, 794.23)" d="M 4.666376113891602 0 L 71.53955841064453 0 C 74.11672210693359 0 76.2059326171875 2.547731637954712 76.2059326171875 5.690518379211426 L 76.2059326171875 20.08243179321289 C 76.2059326171875 23.22521591186523 74.11672210693359 25.77294921875 71.53955841064453 25.77294921875 L 4.666376113891602 25.77294921875 C 2.089207649230957 25.77294921875 0 23.22521591186523 0 20.08243179321289 L 0 5.690518379211426 C 0 2.547731637954712 2.089207649230957 0 4.666376113891602 0 Z" fill="#f5f5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7o4y83 =
    '<svg viewBox="63.1 4.0 28.8 21.6" ><path transform="translate(63.13, -59.96)" d="M 28.82198715209961 71.63624572753906 C 28.82198715209961 72.96617126464844 27.65953826904297 74.10334014892578 26.30006408691406 74.10334014892578 L 20.67915725708008 74.10334014892578 C 21.59898376464844 75.06302642822266 21.71190643310547 76.90481567382813 20.32456588745117 78.09699249267578 C 21.12887954711914 79.38210296630859 20.44542694091797 81.08146667480469 19.3985481262207 81.60488128662109 C 19.90372085571289 84.37117767333984 18.16314315795898 85.61648559570313 15.31168174743652 85.61648559570313 C 15.15710067749023 85.61648559570313 14.56433582305908 85.60505676269531 14.4109935760498 85.60551452636719 C 10.92246341705322 85.61496734619141 10.08240413665771 83.85677337646484 7.44581127166748 83.44864654541016 C 6.788703918457031 83.346923828125 6.304810047149658 82.77926635742188 6.304810047149658 82.11427307128906 L 6.304810047149658 72.45863342285156 L 6.304922103881836 72.45857238769531 C 6.305541515350342 71.42470550537109 6.902021884918213 70.43827819824219 7.907244682312012 69.99040985107422 C 9.533323287963867 69.25894165039063 13.27832317352295 67.22991180419922 13.96065044403076 65.63766479492188 C 14.39956665039063 64.61346435546875 15.16441822052002 64.00044250488281 16.21236801147461 63.99999237060547 C 18.13882446289063 63.99920654296875 19.46339988708496 65.97576904296875 18.69595718383789 67.76644134521484 C 18.49425888061523 68.23699951171875 18.22804832458496 68.70484924316406 17.89924240112305 69.16915893554688 L 26.30006408691406 69.16915893554688 C 27.6201343536377 69.16915893554688 28.82198715209961 70.32558441162109 28.82198715209961 71.63624572753906 Z M 5.404122829437256 71.65583801269531 L 5.404122829437256 82.46408843994141 C 5.404122829437256 83.21024322509766 4.799254894256592 83.81511688232422 4.053092002868652 83.81511688232422 L 1.351030707359314 83.81511688232422 C 0.604867696762085 83.81511688232422 0 83.21024322509766 0 82.46408843994141 L 0 71.65583801269531 C 0 70.90967559814453 0.604867696762085 70.3048095703125 1.351030707359314 70.3048095703125 L 4.053092002868652 70.3048095703125 C 4.799254894256592 70.3048095703125 5.404122829437256 70.90967559814453 5.404122829437256 71.65583801269531 Z M 3.827920436859131 81.11305236816406 C 3.827920436859131 80.49124145507813 3.323873281478882 79.98719024658203 2.702061414718628 79.98719024658203 C 2.080249547958374 79.98719024658203 1.576202511787415 80.49124145507813 1.576202511787415 81.11305236816406 C 1.576202511787415 81.73486328125 2.080249547958374 82.23890686035156 2.702061414718628 82.23890686035156 C 3.323873281478882 82.23890686035156 3.827920436859131 81.73486328125 3.827920436859131 81.11305236816406 Z" fill="#aa00ff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_ymwx5w =
    '<svg viewBox="1383.0 486.0 133.4 48.0" ><path transform="translate(1383.0, 486.0)" d="M 8.167202949523926 0 L 125.2102355957031 0 C 129.7208557128906 0 133.37744140625 4.744941234588623 133.37744140625 10.59812355041504 L 133.37744140625 37.40188217163086 C 133.37744140625 43.25506210327148 129.7208557128906 48 125.2102355957031 48 L 8.167202949523926 48 C 3.656581163406372 48 0 43.25506210327148 0 37.40188217163086 L 0 10.59812355041504 C 0 4.744941234588623 3.656581163406372 0 8.167202949523926 0 Z" fill="#f3e5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_545nhs =
    '<svg viewBox="0.0 14.5 11.4 17.3" ><path transform="translate(-888.36, -604.6)" d="M 894.5100708007813 619.0842895507813 C 894.5100708007813 619.0842895507813 882.9132080078125 617.5784912109375 891.56201171875 636.3479614257813 C 891.56201171875 636.3479614257813 899.44384765625 632.970458984375 899.7577514648438 625.3521728515625 C 899.889892578125 622.2836303710938 897.7061157226563 619.60107421875 894.6744384765625 619.1079711914063 L 894.5100708007813 619.0842895507813 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_68upe3 =
    '<svg viewBox="3.2 14.5 3.7 17.3" ><path transform="translate(-906.85, -604.6)" d="M 913.1694946289063 619.0599975585938 C 913.1694946289063 619.0599975585938 915.7947387695313 629.525634765625 910.0599365234375 636.353271484375" fill="none" fill-opacity="0.1" stroke="#535461" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_7w6m6q =
    '<svg viewBox="3.1 6.4 21.5 26.3" ><path transform="translate(-905.94, -558.15)" d="M 909 590.864501953125 C 909 590.864501953125 913.1755981445313 580.5736083984375 920.9730224609375 576.75634765625 C 924.25634765625 575.176025390625 926.93798828125 572.57275390625 928.614990234375 569.3379516601563 C 929.3986206054688 567.797119140625 930.03955078125 566.187744140625 930.529541015625 564.530029296875" fill="none" fill-opacity="0.1" stroke="#535461" stroke-width="2" stroke-opacity="0.1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_d8bt5k =
    '<svg viewBox="24.5 0.0 5.6 6.5" ><path transform="translate(-1029.12, -521.43)" d="M 1058.609741210938 525.3776245117188 C 1057.796630859375 526.3992309570313 1053.589965820313 527.894775390625 1053.589965820313 527.894775390625 C 1053.589965820313 527.894775390625 1054.096435546875 523.4526977539063 1054.909301757813 522.4384155273438 C 1055.414672851563 521.7169189453125 1056.278564453125 521.3353271484375 1057.152221679688 521.4476928710938 C 1058.02587890625 521.56005859375 1058.765014648438 522.1478271484375 1059.071166992188 522.9737548828125 C 1059.37744140625 523.799560546875 1059.200317382813 524.7271728515625 1058.611206054688 525.3820190429688 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jcrsqm =
    '<svg viewBox="22.5 7.4 7.3 4.8" ><path transform="translate(-1017.6, -563.9)" d="M 1045.639282226563 575.94384765625 C 1044.401489257813 576.3598022460938 1040.059936523438 575.3248901367188 1040.059936523438 575.3248901367188 C 1040.059936523438 575.3248901367188 1042.895629882813 571.877685546875 1044.133422851563 571.461669921875 C 1044.950561523438 571.1267700195313 1045.88623046875 571.2742309570313 1046.560791015625 571.8440551757813 C 1047.2353515625 572.4140014648438 1047.536987304688 573.311767578125 1047.34326171875 574.17333984375 C 1047.149658203125 575.034912109375 1046.492919921875 575.7173461914063 1045.639282226563 575.94384765625 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n3vd84 =
    '<svg viewBox="15.7 16.9 7.2 4.7" ><path transform="translate(-978.75, -618.94)" d="M 998.9644165039063 640.5441284179688 C 997.6865234375 640.2791137695313 994.4601440429688 637.1932983398438 994.4601440429688 637.1932983398438 C 994.4601440429688 637.1932983398438 998.6475219726563 635.64892578125 999.9269409179688 635.9140014648438 C 1001.128173828125 636.248779296875 1001.8642578125 637.45751953125 1001.610412597656 638.678466796875 C 1001.356506347656 639.8993530273438 1000.199584960938 640.7144775390625 998.9644165039063 640.5426635742188 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4orn4i =
    '<svg viewBox="7.7 22.8 7.3 4.7" ><path transform="translate(-932.41, -652.53)" d="M 945.0763549804688 680.0421752929688 C 943.7718505859375 679.9962768554688 940.0700073242188 677.5012817382813 940.0700073242188 677.5012817382813 C 940.0700073242188 677.5012817382813 943.9376220703125 675.2683715820313 945.2421264648438 675.3157958984375 C 946.4832153320313 675.4420776367188 947.4137573242188 676.5091552734375 947.3699951171875 677.755859375 C 947.3262329101563 679.0025634765625 946.3231811523438 680.001708984375 945.0763549804688 680.0407104492188 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hqdt5r =
    '<svg viewBox="18.4 5.7 4.7 7.6" ><path transform="translate(-994.08, -554.22)" d="M 1012.505310058594 562.7483520507813 C 1012.672607421875 564.0440063476563 1015.499267578125 567.4970703125 1015.499267578125 567.4970703125 C 1015.499267578125 567.4970703125 1017.360534667969 563.4398803710938 1017.194641113281 562.1442260742188 C 1017.139221191406 561.2626342773438 1016.597961425781 560.4849243164063 1015.790283203125 560.1270141601563 C 1014.982727050781 559.76904296875 1014.043029785156 559.8900756835938 1013.352478027344 560.4410400390625 C 1012.662048339844 560.9920043945313 1012.33544921875 561.8814697265625 1012.505310058594 562.7483520507813 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bxu1xg =
    '<svg viewBox="9.4 12.1 4.8 7.1" ><path transform="translate(-942.38, -590.78)" d="M 952.0547485351563 606.325439453125 C 952.6011962890625 607.5099487304688 956.3325805664063 609.9605102539063 956.3325805664063 609.9605102539063 C 956.3325805664063 609.9605102539063 956.8952026367188 605.53173828125 956.3488159179688 604.3472290039063 C 956.0315551757813 603.5232543945313 955.2825317382813 602.9441528320313 954.4052124023438 602.844482421875 C 953.528076171875 602.7449340820313 952.6681518554688 603.141357421875 952.1742553710938 603.8731079101563 C 951.6802978515625 604.6049194335938 951.63427734375 605.5505981445313 952.0547485351563 606.326904296875 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dmm8wk =
    '<svg viewBox="2.0 20.4 4.7 7.4" ><path transform="translate(-899.78, -638.82)" d="M 901.8916015625 662.3533325195313 C 902.229248046875 663.614990234375 905.494140625 666.6593627929688 905.494140625 666.6593627929688 C 905.494140625 666.6593627929688 906.797119140625 662.3904418945313 906.4581298828125 661.1288452148438 C 906.2862548828125 660.2617797851563 905.64599609375 659.5625 904.79736328125 659.3150024414063 C 903.94873046875 659.067626953125 903.032958984375 659.3131713867188 902.4219970703125 659.9520263671875 C 901.81103515625 660.5908203125 901.6065673828125 661.5167236328125 901.8916015625 662.3533325195313 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7pfj5e =
    '<svg viewBox="24.5 0.0 5.6 6.5" ><path transform="translate(-1029.12, -521.43)" d="M 1058.609741210938 525.3776245117188 C 1057.796630859375 526.3992309570313 1053.589965820313 527.894775390625 1053.589965820313 527.894775390625 C 1053.589965820313 527.894775390625 1054.096435546875 523.4526977539063 1054.909301757813 522.4384155273438 C 1055.414672851563 521.7169189453125 1056.278564453125 521.3353271484375 1057.152221679688 521.4476928710938 C 1058.02587890625 521.56005859375 1058.765014648438 522.1478271484375 1059.071166992188 522.9737548828125 C 1059.37744140625 523.799560546875 1059.200317382813 524.7271728515625 1058.611206054688 525.3820190429688 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nmumrc =
    '<svg viewBox="22.5 7.4 7.3 4.8" ><path transform="translate(-1017.6, -563.9)" d="M 1045.639282226563 575.94384765625 C 1044.401489257813 576.3598022460938 1040.059936523438 575.3248901367188 1040.059936523438 575.3248901367188 C 1040.059936523438 575.3248901367188 1042.895629882813 571.877685546875 1044.133422851563 571.461669921875 C 1044.950561523438 571.1267700195313 1045.88623046875 571.2742309570313 1046.560791015625 571.8440551757813 C 1047.2353515625 572.4140014648438 1047.536987304688 573.311767578125 1047.34326171875 574.17333984375 C 1047.149658203125 575.034912109375 1046.492919921875 575.7173461914063 1045.639282226563 575.94384765625 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eibttq =
    '<svg viewBox="15.7 16.9 7.2 4.7" ><path transform="translate(-978.75, -618.94)" d="M 998.9644165039063 640.5441284179688 C 997.6865234375 640.2791137695313 994.4601440429688 637.1932983398438 994.4601440429688 637.1932983398438 C 994.4601440429688 637.1932983398438 998.6475219726563 635.64892578125 999.9269409179688 635.9140014648438 C 1001.128173828125 636.248779296875 1001.8642578125 637.45751953125 1001.610412597656 638.678466796875 C 1001.356506347656 639.8993530273438 1000.199584960938 640.7144775390625 998.9644165039063 640.5426635742188 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_iwczx8 =
    '<svg viewBox="7.7 22.8 7.3 4.7" ><path transform="translate(-932.41, -652.53)" d="M 945.0763549804688 680.0421752929688 C 943.7718505859375 679.9962768554688 940.0700073242188 677.5012817382813 940.0700073242188 677.5012817382813 C 940.0700073242188 677.5012817382813 943.9376220703125 675.2683715820313 945.2421264648438 675.3157958984375 C 946.4832153320313 675.4420776367188 947.4137573242188 676.5091552734375 947.3699951171875 677.755859375 C 947.3262329101563 679.0025634765625 946.3231811523438 680.001708984375 945.0763549804688 680.0407104492188 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5b9ys5 =
    '<svg viewBox="18.4 5.7 4.7 7.6" ><path transform="translate(-994.08, -554.22)" d="M 1012.505310058594 562.7483520507813 C 1012.672607421875 564.0440063476563 1015.499267578125 567.4970703125 1015.499267578125 567.4970703125 C 1015.499267578125 567.4970703125 1017.360534667969 563.4398803710938 1017.194641113281 562.1442260742188 C 1017.139221191406 561.2626342773438 1016.597961425781 560.4849243164063 1015.790283203125 560.1270141601563 C 1014.982727050781 559.76904296875 1014.043029785156 559.8900756835938 1013.352478027344 560.4410400390625 C 1012.662048339844 560.9920043945313 1012.33544921875 561.8814697265625 1012.505310058594 562.7483520507813 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_1gvs1e =
    '<svg viewBox="9.4 12.1 4.8 7.1" ><path transform="translate(-942.38, -590.78)" d="M 952.0547485351563 606.325439453125 C 952.6011962890625 607.5099487304688 956.3325805664063 609.9605102539063 956.3325805664063 609.9605102539063 C 956.3325805664063 609.9605102539063 956.8952026367188 605.53173828125 956.3488159179688 604.3472290039063 C 956.0315551757813 603.5232543945313 955.2825317382813 602.9441528320313 954.4052124023438 602.844482421875 C 953.528076171875 602.7449340820313 952.6681518554688 603.141357421875 952.1742553710938 603.8731079101563 C 951.6802978515625 604.6049194335938 951.63427734375 605.5505981445313 952.0547485351563 606.326904296875 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9e1jz6 =
    '<svg viewBox="2.0 20.4 4.7 7.4" ><path transform="translate(-899.78, -638.82)" d="M 901.8916015625 662.3533325195313 C 902.229248046875 663.614990234375 905.494140625 666.6593627929688 905.494140625 666.6593627929688 C 905.494140625 666.6593627929688 906.797119140625 662.3904418945313 906.4581298828125 661.1288452148438 C 906.2862548828125 660.2617797851563 905.64599609375 659.5625 904.79736328125 659.3150024414063 C 903.94873046875 659.067626953125 903.032958984375 659.3131713867188 902.4219970703125 659.9520263671875 C 901.81103515625 660.5908203125 901.6065673828125 661.5167236328125 901.8916015625 662.3533325195313 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hzlg74 =
    '<svg viewBox="8.6 11.1 21.5 26.3" ><path transform="translate(-937.94, -585.08)" d="M 946.56005859375 622.4759521484375 C 946.56005859375 622.4759521484375 950.7356567382813 612.1849975585938 958.5331420898438 608.3677368164063 C 961.81494140625 606.7863159179688 964.4949951171875 604.1826782226563 966.1705932617188 600.9478759765625 C 966.9542846679688 599.4071044921875 967.5951538085938 597.7977294921875 968.085205078125 596.1400146484375" fill="none" fill-opacity="0.1" stroke="#535461" stroke-width="2" stroke-opacity="0.1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_shbv9x =
    '<svg viewBox="30.0 4.9 5.4 6.2" ><path transform="translate(-1061.08, -549.65)" d="M 1096.119750976563 558.2750244140625 C 1095.306640625 559.2966918945313 1091.099975585938 560.792236328125 1091.099975585938 560.792236328125 C 1091.099975585938 560.792236328125 1091.6064453125 556.3500366210938 1092.419311523438 555.3358154296875 C 1093.257080078125 554.4046630859375 1094.6748046875 554.2864379882813 1095.655151367188 555.0659790039063 C 1096.635498046875 555.8455810546875 1096.839599609375 557.2534790039063 1096.12109375 558.2794189453125 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xxoxjf =
    '<svg viewBox="28.0 12.2 7.1 4.7" ><path transform="translate(-1049.57, -591.38)" d="M 1083.169311523438 608.1036376953125 C 1081.931518554688 608.519775390625 1077.589965820313 607.4847412109375 1077.589965820313 607.4847412109375 C 1077.589965820313 607.4847412109375 1080.425659179688 604.03759765625 1081.66357421875 603.6215209960938 C 1082.87060546875 603.3013305664063 1084.119018554688 603.97314453125 1084.516723632813 605.1569213867188 C 1084.91455078125 606.3407592773438 1084.324829101563 607.630126953125 1083.169311523438 608.1036376953125 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v8ga98 =
    '<svg viewBox="21.3 21.6 7.2 4.7" ><path transform="translate(-1010.72, -645.89)" d="M 1036.494384765625 672.1842041015625 C 1035.216552734375 671.9190673828125 1031.989990234375 668.8333129882813 1031.989990234375 668.8333129882813 C 1031.989990234375 668.8333129882813 1036.177490234375 667.2889404296875 1037.456787109375 667.553955078125 C 1038.658081054688 667.8887939453125 1039.394165039063 669.0975341796875 1039.140380859375 670.3184204101563 C 1038.886474609375 671.5394287109375 1037.729614257813 672.3544921875 1036.494384765625 672.1827392578125 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ymg8sp =
    '<svg viewBox="13.2 27.5 7.3 4.7" ><path transform="translate(-964.38, -679.45)" d="M 982.5963134765625 711.6409912109375 C 981.2918090820313 711.5950927734375 977.5899658203125 709.1000366210938 977.5899658203125 709.1000366210938 C 977.5899658203125 709.1000366210938 981.4576416015625 706.8701171875 982.7620849609375 706.916015625 C 984.003173828125 707.0423583984375 984.9337768554688 708.109375 984.8899536132813 709.3560791015625 C 984.84619140625 710.6028442382813 983.8431396484375 711.6019897460938 982.5963134765625 711.6409912109375 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_724hkp =
    '<svg viewBox="23.9 10.4 4.7 7.6" ><path transform="translate(-1026.05, -581.18)" d="M 1050.025390625 594.388671875 C 1050.192749023438 595.684326171875 1053.019409179688 599.1373291015625 1053.019409179688 599.1373291015625 C 1053.019409179688 599.1373291015625 1054.880737304688 595.0802001953125 1054.71484375 593.7845458984375 C 1054.659423828125 592.9029541015625 1054.1181640625 592.1253662109375 1053.310546875 591.767333984375 C 1052.5029296875 591.409423828125 1051.563232421875 591.5303955078125 1050.872680664063 592.0814208984375 C 1050.182250976563 592.6324462890625 1049.855712890625 593.5218505859375 1050.025390625 594.388671875 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_kx94l3 =
    '<svg viewBox="15.1 17.0 4.7 6.9" ><path transform="translate(-975.08, -619.25)" d="M 990.3167114257813 639.4769897460938 C 990.8630981445313 640.6615600585938 994.594482421875 643.1121826171875 994.594482421875 643.1121826171875 C 994.594482421875 643.1121826171875 995.1572265625 638.683349609375 994.61083984375 637.498779296875 C 994.015869140625 636.4003295898438 992.6702270507813 635.9525756835938 991.53564453125 636.4756469726563 C 990.4012451171875 636.9986572265625 989.8677978515625 638.3126831054688 990.3167114257813 639.4784545898438 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_utpwcb =
    '<svg viewBox="7.6 25.4 4.7 7.1" ><path transform="translate(-932.22, -667.5)" d="M 939.887939453125 695.716552734375 C 940.2254638671875 696.9781494140625 943.490478515625 700.0225219726563 943.490478515625 700.0225219726563 C 943.490478515625 700.0225219726563 944.79345703125 695.7535400390625 944.454345703125 694.4920043945313 C 944.0521240234375 693.3112182617188 942.8031005859375 692.6445922851563 941.59814453125 692.9676513671875 C 940.393310546875 693.2908325195313 939.6453857421875 694.4928588867188 939.887939453125 695.716552734375 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cfxa54 =
    '<svg viewBox="1.7 63.6 144.0 30.5" ><path transform="translate(-61.55, -410.42)" d="M 63.29999542236328 474.0700073242188 C 65.87051391601563 485.056884765625 71.3121337890625 494.5542297363281 79.912109375 499.15771484375 C 97.78431701660156 508.7245788574219 138.0907897949219 503.7908935546875 168.1729431152344 498.1212158203125 C 183.3723907470703 495.2669677734375 197.1691741943359 487.3809509277344 207.3422393798828 475.7328796386719 L 63.29999542236328 474.0700073242188 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4w4095 =
    '<svg viewBox="5.9 0.0 156.5 20.2" ><path transform="translate(-85.46, -44.1)" d="M 244.9528503417969 56.03406143188477 L 228.4473419189453 56.03406143188477 C 227.6594085693359 56.03406143188477 227.0206756591797 55.39531326293945 227.0206756591797 54.60739135742188 C 227.0206756591797 53.81946182250977 227.6594085693359 53.18072509765625 228.4473419189453 53.18072509765625 L 231.3006591796875 53.18072509765625 C 230.5127258300781 53.18072509765625 229.8740081787109 52.54198455810547 229.8740081787109 51.75405502319336 C 229.8740081787109 50.96612548828125 230.5127258300781 50.32738876342773 231.3006591796875 50.32738876342773 L 229.26318359375 50.32738876342773 C 228.4752807617188 50.32738876342773 227.8365325927734 49.68864822387695 227.8365325927734 48.90071868896484 C 227.8365325927734 48.11279678344727 228.4752807617188 47.47405624389648 229.26318359375 47.47405624389648 L 237.8780059814453 47.47405624389648 C 235.9663848876953 46.58563232421875 233.7320098876953 45.953369140625 231.1585388183594 45.62168121337891 C 207.6685028076172 42.6039924621582 199.28173828125 44.59999084472656 196.3232879638672 46.65818786621094 C 192.6733245849609 49.19020080566406 188.6013641357422 51.05294036865234 184.2495422363281 51.95024871826172 C 169.7548522949219 54.93685150146484 142.6504058837891 58.53498458862305 118.0839080810547 50.79529190063477 C 105.8739471435547 46.94544219970703 96.79866027832031 53.44873046875 91.36000823974609 64.31124114990234 L 247.8180084228516 64.31124114990234 C 247.6136627197266 61.15435791015625 247.0021362304688 58.24032592773438 245.8797454833984 55.68757247924805 C 245.6223907470703 55.91059112548828 245.2933959960938 56.0335693359375 244.9528503417969 56.03406143188477 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g1fy71 =
    '<svg viewBox="0.0 40.7 156.0 24.5" ><path transform="translate(-51.45, -278.48)" d="M 51.79808807373047 319.2000122070313 C 51.1644172668457 325.590087890625 51.3800048828125 332.0359191894531 52.43923950195313 338.3693237304688 L 197.3536071777344 343.6687927246094 C 201.3875885009766 339.0284118652344 204.7746276855469 333.8631591796875 207.4224548339844 328.3138427734375 L 51.79808807373047 319.2000122070313 Z M 109.1135025024414 332.8743896484375 L 106.2601776123047 332.8743896484375 C 107.048095703125 332.8743896484375 107.6868438720703 333.5131225585938 107.6868438720703 334.3010559082031 C 107.6868438720703 335.0889892578125 107.048095703125 335.7277526855469 106.2601776123047 335.7277526855469 L 89.75466918945313 335.7277526855469 C 88.96674346923828 335.7277526855469 88.3280029296875 335.0889892578125 88.3280029296875 334.3010559082031 C 88.3280029296875 333.5131225585938 88.96674346923828 332.8743896484375 89.75466918945313 332.8743896484375 L 92.60800170898438 332.8743896484375 C 91.82007598876953 332.8743896484375 91.18133544921875 332.2356872558594 91.18133544921875 331.4477233886719 C 91.18133544921875 330.6597900390625 91.82007598876953 330.0210876464844 92.60800170898438 330.0210876464844 L 90.57054138183594 330.0210876464844 C 89.78262329101563 330.0210876464844 89.14387512207031 329.3823547363281 89.14387512207031 328.5944213867188 C 89.14387512207031 327.8064880371094 89.78262329101563 327.1677551269531 90.57054138183594 327.1677551269531 L 107.0760498046875 327.1677551269531 C 107.8639831542969 327.1677551269531 108.5027160644531 327.8064880371094 108.5027160644531 328.5944213867188 C 108.5027160644531 329.3823547363281 107.8639831542969 330.0210876464844 107.0760498046875 330.0210876464844 L 109.1135025024414 330.0210876464844 C 109.9014358520508 330.0210876464844 110.5401840209961 330.6597900390625 110.5401840209961 331.4477233886719 C 110.5401840209961 332.2356872558594 109.9014358520508 332.8743896484375 109.1135025024414 332.8743896484375 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3n9io5 =
    '<svg viewBox="0.4 20.3 162.1 20.2" ><path transform="translate(-53.63, -161.07)" d="M 215.9973754882813 181.3800048828125 L 57.78471374511719 185.2298583984375 C 55.86125564575195 190.1769256591797 54.59228515625 195.7695770263672 54 201.5665588378906 L 213.2254638671875 201.5665588378906 C 214.2650756835938 198.1612701416016 215.0339813232422 194.6791381835938 215.5250244140625 191.1527099609375 C 215.9988555908203 187.7455902099609 216.1883850097656 184.4495239257813 215.9973754882813 181.3800048828125 Z M 86.11962127685547 193.9912414550781 L 83.26628875732422 193.9912414550781 C 84.05421447753906 193.9912414550781 84.69294738769531 194.6299743652344 84.69294738769531 195.4179077148438 C 84.69294738769531 196.2058258056641 84.05421447753906 196.8445739746094 83.26628875732422 196.8445739746094 L 66.76078796386719 196.8445739746094 C 65.97285461425781 196.8445739746094 65.33412170410156 196.2058258056641 65.33412170410156 195.4179077148438 C 65.33412170410156 194.6299743652344 65.97285461425781 193.9912414550781 66.76078796386719 193.9912414550781 L 69.61412048339844 193.9912414550781 C 68.82619476318359 193.9912414550781 68.18744659423828 193.3524932861328 68.18744659423828 192.5645599365234 C 68.18744659423828 191.7766418457031 68.82619476318359 191.1379089355469 69.61412048339844 191.1379089355469 L 67.57666015625 191.1379089355469 C 66.78873443603516 191.1379089355469 66.14998626708984 190.4991607666016 66.14998626708984 189.7112274169922 C 66.14998626708984 188.9233245849609 66.78873443603516 188.2845611572266 67.57666015625 188.2845611572266 L 84.08216094970703 188.2845611572266 C 84.87008666992188 188.2845611572266 85.50882720947266 188.9233245849609 85.50882720947266 189.7112274169922 C 85.50882720947266 190.4991607666016 84.87008666992188 191.1379089355469 84.08216094970703 191.1379089355469 L 86.11962127685547 191.1379089355469 C 86.90755462646484 191.1379089355469 87.54628753662109 191.7766418457031 87.54628753662109 192.5645599365234 C 87.54628753662109 193.3524932861328 86.90755462646484 193.9912414550781 86.11962127685547 193.9912414550781 Z" fill="#6c63ff" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_u9rl6t =
    '<svg viewBox="21.4 3.5 117.6 116.7" ><defs><linearGradient id="gradient" x1="0.499987" y1="0.999975" x2="0.499987" y2="-0.000064"><stop offset="0.0" stop-color="#40808080" stop-opacity="0.25" /><stop offset="0.54" stop-color="#1f808080" stop-opacity="0.12" /><stop offset="1.0" stop-color="#1a808080" stop-opacity="0.1" /></linearGradient></defs><path transform="translate(-174.73, -64.42)" d="M 313.7161254882813 184.5318603515625 C 313.7161254882813 184.5318603515625 307.1180725097656 148.3432312011719 294.5364685058594 142.4707336425781 C 283.8753051757813 137.4911041259766 272.3464965820313 134.1343231201172 269.0682067871094 133.2236938476563 C 268.5786743164063 132.4351501464844 268.0127868652344 131.6966552734375 267.3787231445313 131.0188903808594 C 262.8981018066406 126.3413238525391 260.2061462402344 126.4286880493164 259.7708129882813 126.4864501953125 C 259.564208984375 125.558837890625 259.4158325195313 124.6192398071289 259.3265991210938 123.673095703125 C 259.3132934570313 123.525016784668 259.2999267578125 123.387321472168 259.2881164550781 123.2407302856445 L 259.3265991210938 123.2214736938477 C 259.2999267578125 122.9416275024414 259.2762451171875 122.6528701782227 259.2555236816406 122.3552398681641 C 261.0845947265625 121.3790817260742 262.7685546875 120.1525726318359 264.2588500976563 118.7112197875977 C 264.2781066894531 118.7748870849609 264.2943725585938 118.8385696411133 264.3151245117188 118.9037094116211 C 267.5440673828125 116.1742706298828 270.7063598632813 113.3707809448242 273.8020629882813 110.4932632446289 C 274.6904602050781 109.66259765625 275.6233215332031 108.7608337402344 275.9254150390625 107.5895919799805 C 276.0221557617188 107.1865310668945 276.0595397949219 106.7715148925781 276.0364685058594 106.3576431274414 C 276.0764465332031 105.4692077636719 275.8661499023438 104.5615310668945 275.8306274414063 103.661262512207 C 275.8306274414063 103.5131912231445 275.846923828125 103.37548828125 275.8661499023438 103.2348175048828 C 276.073486328125 101.7615051269531 277.0981140136719 100.5517654418945 277.9391479492188 99.31536865234375 C 280.0403747558594 96.19086456298828 281.1371459960938 92.49911499023438 281.0827026367188 88.73419952392578 C 281.105712890625 86.93020629882813 280.8560791015625 85.13307952880859 280.3423461914063 83.40364074707031 C 279.6864013671875 81.20921325683594 278.3211669921875 78.90375518798828 276.0482788085938 78.42400360107422 C 275.1687316894531 78.23891448974609 274.2551574707031 78.35440826416016 273.3578491210938 78.29666137695313 C 269.6427307128906 78.05974578857422 266.8619689941406 75.03908538818359 263.8990478515625 72.82542419433594 C 260.2828369140625 70.13676452636719 256.0064086914063 68.47693634033203 251.5232391357422 68.02199554443359 C 250.1239471435547 67.87391662597656 248.6788024902344 67.86355590820313 247.3476104736328 68.30776977539063 C 244.3580780029297 69.30281066894531 242.5427093505859 72.37528991699219 239.6627502441406 73.63833618164063 C 237.5334625244141 74.57710266113281 235.072509765625 74.42459106445313 232.8514556884766 75.12941741943359 C 229.5450134277344 76.18071746826172 226.7390594482422 79.57154846191406 226.6650238037109 83.0556640625 C 226.6650238037109 83.18448638916016 226.6650238037109 83.31331634521484 226.6650238037109 83.44213104248047 C 226.6650238037109 83.46434020996094 226.6650238037109 83.48655700683594 226.6650238037109 83.50727844238281 C 226.6280212402344 85.26785278320313 227.25732421875 87.06098937988281 227.3076629638672 88.86302185058594 C 227.3076629638672 89.02590179443359 227.3101348876953 89.18927001953125 227.3150634765625 89.35314178466797 C 227.2987823486328 91.29878997802734 227.0663146972656 93.25037384033203 226.3570556640625 95.07905578613281 C 225.9750213623047 96.063720703125 225.4834289550781 97.20387268066406 225.5633850097656 98.18855285644531 C 225.5189666748047 98.79119873046875 225.6359252929688 99.35684204101563 226.0549774169922 99.81732940673828 L 226.7701568603516 99.18655395507813 C 226.5303192138672 100.4847183227539 226.4098663330078 101.8021392822266 226.4103393554688 103.1222839355469 C 226.4103393554688 109.7766036987305 229.4369201660156 115.7349853515625 234.2107391357422 119.744758605957 C 234.2383880615234 120.1879806518555 234.2650451660156 120.6627960205078 234.2906951904297 121.1692047119141 C 234.4032440185547 123.3636322021484 234.4920806884766 126.1162719726563 234.4669036865234 129.1161804199219 L 227.4838714599609 135.5350799560547 L 209.5317077636719 143.6789855957031 C 209.5317077636719 143.6789855957031 193.1135711669922 147.1468353271484 196.6495208740234 170.2118988037109 L 198.3375244140625 184.5333557128906 L 213.3267822265625 184.5333557128906 L 213.2927093505859 184.6088714599609 L 235.5404357910156 184.6088714599609 L 235.5537567138672 184.5333557128906 L 288.4862670898438 184.5333557128906 L 288.4759216308594 184.6088714599609 L 290.5488891601563 184.6088714599609 L 290.5488891601563 184.5333557128906 L 313.7161254882813 184.5318603515625 Z M 259.9026184082031 126.8536605834961 C 260.3563537597656 127.7922897338867 260.7135925292969 128.7745971679688 260.9686889648438 129.7854614257813 C 260.44482421875 128.8127288818359 260.0576782226563 127.772331237793 259.8182067871094 126.6937484741211 L 259.8404235839844 126.7337112426758 L 259.9026184082031 126.8536605834961 Z M 234.4609832763672 129.8150939941406 C 234.4609832763672 130.0973968505859 234.4560394287109 130.3822021484375 234.4461822509766 130.6694488525391 L 234.41064453125 130.7197875976563 C 234.4082489013672 130.4150085449219 234.4250640869141 130.1103515625 234.4609832763672 129.8076782226563 Z" fill="url(#gradient)" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_98oe3z =
    '<svg viewBox="56.1 41.7 34.9 60.7" ><path transform="translate(-374.21, -284.06)" d="M 465.2335815429688 353.0854187011719 L 462.2721557617188 381.3670654296875 L 446.4285278320313 386.4014587402344 C 446.4285278320313 386.4014587402344 425.8466491699219 382.5516052246094 431.1772155761719 371.4462585449219 C 434.9692993164063 363.5466918945313 434.8641967773438 349.4295959472656 434.4880981445313 341.9371643066406 C 434.3399963378906 338.8957824707031 434.1386108398438 336.9457092285156 434.1386108398438 336.9457092285156 C 434.1386108398438 336.9457092285156 461.0876159667969 313.4023742675781 458.8665466308594 334.5765380859375 C 458.4371337890625 338.6766662597656 458.4119567871094 341.8823852539063 458.6503295898438 344.3877563476563 C 459.6498413085938 354.8179016113281 465.2335815429688 353.0854187011719 465.2335815429688 353.0854187011719 Z" fill="#fdc2cc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ky8aq7 =
    '<svg viewBox="56.1 41.7 34.9 60.7" ><path transform="translate(-374.21, -284.06)" d="M 465.2335815429688 353.0854187011719 L 462.2721557617188 381.3670654296875 L 446.4285278320313 386.4014587402344 C 446.4285278320313 386.4014587402344 425.8466491699219 382.5516052246094 431.1772155761719 371.4462585449219 C 434.9692993164063 363.5466918945313 434.8641967773438 349.4295959472656 434.4880981445313 341.9371643066406 C 434.3399963378906 338.8957824707031 434.1386108398438 336.9457092285156 434.1386108398438 336.9457092285156 C 434.1386108398438 336.9457092285156 461.0876159667969 313.4023742675781 458.8665466308594 334.5765380859375 C 458.4371337890625 338.6766662597656 458.4119567871094 341.8823852539063 458.6503295898438 344.3877563476563 C 459.6498413085938 354.8179016113281 465.2335815429688 353.0854187011719 465.2335815429688 353.0854187011719 Z" fill="#000000" fill-opacity="0.03" stroke="none" stroke-width="1" stroke-opacity="0.03" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_4wp13d =
    '<svg viewBox="59.9 41.2 24.9 21.3" ><path transform="translate(-396.32, -281.5)" d="M 480.9779052734375 331.5765075683594 C 480.5484924316406 335.6766052246094 480.5233154296875 338.88232421875 480.76171875 341.3876953125 C 472.9744567871094 345.6391296386719 463.3745727539063 344.66552734375 456.5994567871094 338.9371032714844 C 456.4513854980469 335.8957214355469 456.25 333.9456176757813 456.25 333.9456176757813 C 456.25 333.9456176757813 483.198974609375 310.4023132324219 480.9779052734375 331.5765075683594 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n23mv7 =
    '<svg viewBox="23.5 63.1 113.5 57.0" ><path transform="translate(-186.54, -407.35)" d="M 323.4682922363281 527.467041015625 L 212.1187133789063 527.467041015625 L 210.4899291992188 513.4002685546875 C 207.0842895507813 490.7454223632813 222.9279174804688 487.3397521972656 222.9279174804688 487.3397521972656 L 240.2522583007813 479.3439025878906 L 247.1375732421875 472.90283203125 C 244.91650390625 481.3428649902344 261.7225646972656 498.8893127441406 261.7225646972656 498.8893127441406 L 261.7225646972656 498.8893127441406 C 261.83056640625 498.7889404296875 261.9329223632813 498.6826782226563 262.0290832519531 498.5709533691406 C 262.482177734375 498.076416015625 263.5646057128906 496.8385620117188 266.0995788574219 493.7675476074219 C 267.0057678222656 492.6673583984375 268.1000061035156 491.3332824707031 269.4178466796875 489.7133483886719 C 275.7552795410156 481.9248352050781 272.5036315917969 472.72216796875 271.5322875976563 470.8194274902344 L 271.4715881347656 470.7010192871094 C 271.4346008300781 470.6329040527344 271.4064636230469 470.5780944824219 271.3842163085938 470.5395812988281 C 271.3781127929688 470.5256042480469 271.3706970214844 470.51220703125 271.3620300292969 470.4996032714844 C 271.3558654785156 470.4901428222656 271.3504333496094 470.4802856445313 271.3457336425781 470.469970703125 L 279.4896240234375 476.8370971679688 C 279.4896240234375 476.8370971679688 279.8020935058594 476.9199829101563 280.3780822753906 477.0828247070313 C 283.5468139648438 477.9712829589844 294.6788024902344 481.2747192382813 304.9579162597656 486.1655578613281 C 317.1012573242188 491.9299621582031 323.4682922363281 527.467041015625 323.4682922363281 527.467041015625 Z" fill="#aa00ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v2dsiu =
    '<svg viewBox="72.7 63.1 26.6 57.0" ><path transform="translate(-469.6, -407.23)" d="M 568.6237182617188 493.4351196289063 C 567.2911376953125 492.1025085449219 558.2587280273438 490.4736938476563 558.2587280273438 490.4736938476563 C 558.5548706054688 494.0274658203125 547.59765625 499.5060424804688 547.59765625 499.5060424804688 L 548.4120483398438 527.343505859375 L 543.1585083007813 527.343505859375 L 542.27001953125 502.3194580078125 L 544.7872314453125 498.7656860351563 L 544.7872314453125 498.7656860351563 L 545.09375 498.4473266601563 C 546.5524291992188 496.9353637695313 547.912109375 495.3308715820313 549.1641845703125 493.6438903808594 C 550.0704345703125 492.5437316894531 551.1646728515625 491.2096557617188 552.4824829101563 489.5897216796875 C 558.8200073242188 481.8011474609375 555.568359375 472.5985412597656 554.5969848632813 470.69580078125 L 554.5362548828125 470.5773315429688 C 554.500732421875 470.5077819824219 554.4725952148438 470.4544677734375 554.4489135742188 470.416015625 C 554.4428100585938 470.4020080566406 554.4353637695313 470.3886108398438 554.4266967773438 470.3759765625 C 554.4205932617188 470.3665161132813 554.4151000976563 470.3566589355469 554.410400390625 470.3464050292969 L 554.410400390625 470.3464050292969 C 554.410400390625 470.3464050292969 557.07568359375 469.7540893554688 561.81396484375 474.7885131835938 C 562.4264526367188 475.4571838378906 562.9720458984375 476.1842041015625 563.4427490234375 476.9592590332031 C 567.2926025390625 483.1367797851563 569.7979736328125 494.609375 568.6237182617188 493.4351196289063 Z" fill="#6c63ff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rfsz3d =
    '<svg viewBox="72.7 63.1 26.6 57.0" ><path transform="translate(-469.6, -407.23)" d="M 568.6237182617188 493.4351196289063 C 567.2911376953125 492.1025085449219 558.2587280273438 490.4736938476563 558.2587280273438 490.4736938476563 C 558.5548706054688 494.0274658203125 547.59765625 499.5060424804688 547.59765625 499.5060424804688 L 548.4120483398438 527.343505859375 L 543.1585083007813 527.343505859375 L 542.27001953125 502.3194580078125 L 544.7872314453125 498.7656860351563 L 544.7872314453125 498.7656860351563 L 545.09375 498.4473266601563 C 546.5524291992188 496.9353637695313 547.912109375 495.3308715820313 549.1641845703125 493.6438903808594 C 550.0704345703125 492.5437316894531 551.1646728515625 491.2096557617188 552.4824829101563 489.5897216796875 C 558.8200073242188 481.8011474609375 555.568359375 472.5985412597656 554.5969848632813 470.69580078125 L 554.5362548828125 470.5773315429688 C 554.500732421875 470.5077819824219 554.4725952148438 470.4544677734375 554.4489135742188 470.416015625 C 554.4428100585938 470.4020080566406 554.4353637695313 470.3886108398438 554.4266967773438 470.3759765625 C 554.4205932617188 470.3665161132813 554.4151000976563 470.3566589355469 554.410400390625 470.3464050292969 L 554.410400390625 470.3464050292969 C 554.410400390625 470.3464050292969 557.07568359375 469.7540893554688 561.81396484375 474.7885131835938 C 562.4264526367188 475.4571838378906 562.9720458984375 476.1842041015625 563.4427490234375 476.9592590332031 C 567.2926025390625 483.1367797851563 569.7979736328125 494.609375 568.6237182617188 493.4351196289063 Z" fill="#000000" fill-opacity="0.3" stroke="none" stroke-width="1" stroke-opacity="0.3" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_yzehkg =
    '<svg viewBox="38.8 97.6 7.3 22.6" ><path transform="translate(-274.49, -605.79)" d="M 313.25 703.4000244140625 C 313.25 703.4000244140625 320.2093811035156 717.6148681640625 320.5795593261719 725.9808959960938" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ih7iim =
    '<svg viewBox="112.6 105.8 2.0 14.4" ><path transform="translate(-647.73, -608.56)" d="M 762.2989501953125 714.3099975585938 L 760.2999877929688 728.7469482421875 L 762.2989501953125 728.7469482421875 L 762.2989501953125 714.3099975585938 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xo371j =
    '<svg viewBox="40.3 57.0 37.1 63.2" ><path transform="translate(-283.44, -372.23)" d="M 323.75 492.4154663085938 L 334.7813110351563 467.3174133300781 C 334.7813110351563 467.3174133300781 337.8908081054688 461.3945617675781 338.6311950683594 455.4716796875 C 339.3715209960938 449.5488586425781 343.3694458007813 440.2203674316406 343.3694458007813 440.2203674316406 C 343.3694458007813 440.2203674316406 353.2902221679688 427.6343078613281 357.8804626464844 429.4111633300781 C 362.4706420898438 431.1880187988281 353.8825378417969 437.8511962890625 353.8825378417969 437.8511962890625 C 353.8825378417969 437.8511962890625 366.4685668945313 442.7375793457031 357.8804626464844 457.2485656738281 C 349.2922973632813 471.759521484375 349.1442260742188 469.0942687988281 349.1442260742188 469.0942687988281 L 344.9241943359375 492.4154663085938 L 323.75 492.4154663085938 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_sdbyx8 =
    '<svg viewBox="40.0 57.0 37.1 63.2" ><path transform="translate(-281.73, -372.21)" d="M 321.75 492.3976440429688 L 332.7813415527344 467.299560546875 C 332.7813415527344 467.299560546875 335.8908081054688 461.376708984375 336.6311645507813 455.4538269042969 C 337.10205078125 451.6883850097656 338.8892822265625 446.5458984375 340.1286010742188 443.2986755371094 C 340.9375915527344 441.1757507324219 342.1279296875 439.2186889648438 343.6408996582031 437.52392578125 C 346.8480834960938 433.9346618652344 352.6731872558594 428.1465759277344 355.8804321289063 429.3903503417969 C 360.4706420898438 431.1672058105469 351.8825073242188 437.8304138183594 351.8825073242188 437.8304138183594 C 351.8825073242188 437.8304138183594 364.4685668945313 442.7167663574219 355.8804321289063 457.2277526855469 C 347.2922973632813 471.7387390136719 347.1442565917969 469.0734558105469 347.1442565917969 469.0734558105469 L 342.9241943359375 492.3946838378906 L 321.75 492.3976440429688 Z" fill="#fdc2cc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7fvy4l =
    '<svg viewBox="51.9 6.0 53.6 49.6" ><path transform="translate(-349.81, -78.88)" d="M 408.7066040039063 91.98310852050781 C 410.8491821289063 91.29014587402344 413.2272033691406 91.439697265625 415.2824401855469 90.51869201660156 C 418.0617370605469 89.27192687988281 419.8133850097656 86.25422668457031 422.6978454589844 85.27696228027344 C 423.9830932617188 84.84162902832031 425.3779296875 84.85792541503906 426.7268371582031 84.99710083007813 C 431.0646057128906 85.44856262207031 435.1954956054688 87.08073425292969 438.6702880859375 89.71614074707031 C 441.529541015625 91.89131164550781 444.2125854492188 94.857177734375 447.7973937988281 95.08964538574219 C 448.6636047363281 95.14591979980469 449.544677734375 95.03190612792969 450.3931274414063 95.21403503417969 C 452.5904846191406 95.68490600585938 453.9068298339844 97.94889831542969 454.5391235351563 100.1003875732422 C 456.019287109375 105.2602081298828 455.1723327636719 110.8091583251953 452.2203063964844 115.2924957275391 C 451.4088745117188 116.5066833496094 450.4197387695313 117.6956939697266 450.2198486328125 119.1423492431641 C 450.0244140625 120.5608673095703 450.6285400390625 122.0312194824219 450.276123046875 123.4201202392578 C 449.9799499511719 124.5706329345703 449.091552734375 125.4561004638672 448.226806640625 126.27197265625 C 445.24072265625 129.0961761474609 442.18896484375 131.8478240966797 439.0715637207031 134.5269470214844 C 437.45166015625 129.3799743652344 439.8282165527344 123.8376922607422 439.4580383300781 118.4552917480469 C 439.3099670410156 116.3586120605469 438.5696105957031 114.0694274902344 436.72021484375 113.0803070068359 C 434.9892578125 112.1563415527344 432.7770690917969 112.6360931396484 431.025390625 111.7476654052734 C 429.0708312988281 110.7629852294922 428.268310546875 108.4308776855469 426.7905578613281 106.81689453125 C 424.2733459472656 104.0627593994141 419.9037475585938 103.7073974609375 416.3840942382813 104.9512023925781 C 412.8644409179688 106.1949920654297 409.9874267578125 108.753662109375 407.2036743164063 111.2486572265625 L 402.1440734863281 115.7870330810547 C 401.1564331054688 114.6735534667969 401.9057006835938 112.9648132324219 402.440185546875 111.5729370117188 C 403.2368469238281 109.4866180419922 403.4115600585938 107.2374114990234 403.3582763671875 105.0222625732422 C 403.3153381347656 103.2454071044922 402.7023010253906 101.4907684326172 402.7378540039063 99.76129150390625 C 402.8089294433594 96.3497314453125 405.5156555175781 93.01516723632813 408.7066040039063 91.98310852050781 Z" fill="#000000" fill-opacity="0.1" stroke="none" stroke-width="1" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3fr4z2 =
    '<svg viewBox="51.9 5.6 53.6 49.6" ><path transform="translate(-349.81, -76.33)" d="M 408.7066040039063 88.98311614990234 C 410.8491821289063 88.29014587402344 413.2272033691406 88.439697265625 415.2824401855469 87.51869201660156 C 418.0617370605469 86.27193450927734 419.8133850097656 83.25423431396484 422.6978454589844 82.27696990966797 C 423.9830932617188 81.84164428710938 425.3779296875 81.85792541503906 426.7268371582031 81.99711608886719 C 431.0646057128906 82.44856262207031 435.1954956054688 84.08074188232422 438.6702880859375 86.71614837646484 C 441.529541015625 88.89131164550781 444.2125854492188 91.857177734375 447.7973937988281 92.08965301513672 C 448.6636047363281 92.14592742919922 449.544677734375 92.03190612792969 450.3931274414063 92.21402740478516 C 452.5904846191406 92.68489837646484 453.9068298339844 94.94890594482422 454.5391235351563 97.10038757324219 C 456.0193176269531 102.2602157592773 455.17236328125 107.8091659545898 452.2203063964844 112.2925033569336 C 451.4088745117188 113.5066833496094 450.4197387695313 114.6956939697266 450.2198486328125 116.1423492431641 C 450.0244140625 117.5608749389648 450.6285400390625 119.0312271118164 450.276123046875 120.4201278686523 C 449.9799499511719 121.5706405639648 449.091552734375 122.4561004638672 448.226806640625 123.2719879150391 C 445.24072265625 126.0961990356445 442.18896484375 128.8478393554688 439.0715637207031 131.5269470214844 C 437.45166015625 126.379997253418 439.8282165527344 120.8376846313477 439.4580383300781 115.4552917480469 C 439.3099670410156 113.3586044311523 438.5696105957031 111.0694198608398 436.72021484375 110.0803070068359 C 434.9892578125 109.1563415527344 432.7770690917969 109.6360931396484 431.025390625 108.7476654052734 C 429.0708312988281 107.7629928588867 428.268310546875 105.4308700561523 426.7905578613281 103.81689453125 C 424.2733459472656 101.0627670288086 419.9037475585938 100.7073974609375 416.3840942382813 101.9511947631836 C 412.8644409179688 103.1949920654297 409.9874267578125 105.7536697387695 407.2036743164063 108.248664855957 L 402.1440734863281 112.7870483398438 C 401.1564331054688 111.6735534667969 401.9057006835938 109.9648056030273 402.440185546875 108.5729446411133 C 403.2368469238281 106.4866180419922 403.4115600585938 104.237419128418 403.3582763671875 102.0222702026367 C 403.3153381347656 100.2454071044922 402.7023010253906 98.49076843261719 402.7378540039063 96.76129913330078 C 402.8089294433594 93.34974670410156 405.5156555175781 90.01517486572266 408.7066040039063 88.98311614990234 Z" fill="#865a61" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
