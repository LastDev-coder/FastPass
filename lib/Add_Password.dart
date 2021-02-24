import 'dart:math';

import 'package:adobe_xd/pinned.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class add_password extends StatefulWidget {
  const add_password({Key key}) : super(key: key);

  @override
  _add_password createState() => _add_password();
}

class _add_password extends State<add_password> {
  final formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var username;
  var field;
  var p;
  var result = 'Click here';
  Random _rnd = Random();

  static const _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*)_+{}[]/*-+/,=';
  static const _digit =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  static const _spc = '1234567890!@#%^&*)_+{}[]/*-+/,=';

  static const _exta =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890!@#%^&*)_+{}[]/*-+/,=';

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  String getRandomDigit(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _digit.codeUnitAt(_rnd.nextInt(_digit.length))));

  String getRandomSpc(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _spc.codeUnitAt(_rnd.nextInt(_spc.length))));

  String getRandomExta(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _exta.codeUnitAt(_rnd.nextInt(_exta.length))));

  Future<void> _addData() async {
    formkey.currentState.validate();
  }

  getPassword() {
    setState(() {
      result = getRandomString(4) +
          getRandomDigit(4) +
          getRandomSpc(4) +
          getRandomExta(4);
    });
    return result;
  }

  Future sendData() async {
    if (formkey.currentState.validate()) {
      if (result != 'Click here') {
        _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            elevation: 4.0,
            content: Text('Processing... '),
            duration: new Duration(seconds: 3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
              ),
            ),
            behavior: SnackBarBehavior.floating,
            action: SnackBarAction(
              textColor: Colors.yellow,
              label: 'OK',
              onPressed: () {},
            ),
          ),
        );

        final FirebaseAuth auth = FirebaseAuth.instance;
        final User user = auth.currentUser;
        final uid = user.uid;

        CollectionReference users = FirebaseFirestore.instance.collection(uid);

        Future<void> addPassword() {
          return users
              .doc(result)
              .set({'Field': field, 'name': username, 'password': result})
              .then((value) => print("User Added"))
              .catchError((error) => print("Failed to add user: $error"));
        }

        addPassword();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => home()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xffffffff),
      body: Form(
        key: formkey,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(31.0, 60.0, 350.0, 552.0),
              size: Size(412.0, 847.0),
              pinLeft: true,
              pinRight: true,
              pinTop: true,
              fixedHeight: true,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 350.0, 421.0),
                    size: Size(350.0, 552.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 350.0, 421.0),
                          size: Size(350.0, 421.0),
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
                          bounds: Rect.fromLTWH(37.0, 230.0, 277.0, 70.0),
                          size: Size(350.0, 421.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Container(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              // obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: const Color(0xff304ffe)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                labelText: 'Field',
                                labelStyle:
                                    TextStyle(color: const Color(0xff304ffe)),
                                hintText: 'Google,Facebook etc.',
                              ),
                              onChanged: (value) {
                                setState(() {
                                  field = value;
                                });
                              },

                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Field is required';
                                }
                              },
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(96.0, 29.0, 158.7, 157.9),
                          size: Size(350.0, 421.0),
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(74.8, 1.9, 34.8, 40.0),
                                size: Size(158.7, 157.9),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_8pl8nz,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(76.8, 3.8, 30.9, 36.1),
                                size: Size(158.7, 157.9),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_piwz7v,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(83.4, 8.6, 17.6, 4.7),
                                size: Size(158.7, 157.9),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_ox0mym,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(83.4, 18.2, 17.6, 4.7),
                                size: Size(158.7, 157.9),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_v1me9z,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(83.4, 27.9, 17.6, 4.7),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_87r52k,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(123.8, 26.7, 34.8, 40.0),
                                size: Size(158.7, 157.9),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_6h25bc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(125.8, 28.7, 30.9, 36.1),
                                size: Size(158.7, 157.9),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_q7r59p,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(71.7, 54.6, 35.2, 40.3),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_bt0ycc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(132.4, 38.3, 17.6, 4.7),
                                size: Size(158.7, 157.9),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_7tvdn6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(132.4, 48.0, 17.6, 4.7),
                                size: Size(158.7, 157.9),
                                pinRight: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_c918vt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(81.3, 67.1, 15.0, 15.0),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(84.2, 70.1, 9.1, 9.1),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_mvzbi6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(83.1, 0.0, 16.7, 5.6),
                                size: Size(158.7, 157.9),
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_3lnv1f,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(132.7, 25.2, 16.7, 5.6),
                                size: Size(158.7, 157.9),
                                pinRight: true,
                                pinTop: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_xj940e,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(28.9, 138.4, 5.3, 15.4),
                                size: Size(158.7, 157.9),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_mj4opc,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(27.9, 152.6, 12.9, 5.2),
                                size: Size(158.7, 157.9),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_l0n7cq,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(7.4, 138.4, 5.9, 15.4),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_x9vpgm,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(6.4, 152.6, 12.9, 5.2),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_hm6t02,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(4.9, 89.8, 31.0, 59.1),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_spey0g,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.8, 36.5, 16.0, 16.0),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xffffb8b8),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.3, 53.9, 25.9, 43.9),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_3htpxi,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(6.3, 81.7, 6.6, 17.9),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_jxst13,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(3.9, 54.7, 17.1, 37.1),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_brm0vv,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(33.9, 80.8, 15.9, 13.2),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_r04ozm,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(18.0, 56.9, 26.0, 32.1),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_704hmw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.0, 34.8, 18.7, 17.9),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_xyp04g,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(12.7, 67.1, 5.9, 22.2),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_mkoiza,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(38.0, 69.1, 44.0, 47.5),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_nxdl68,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(40.0, 71.0, 40.1, 43.6),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_jyifav,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(53.9, 83.7, 16.8, 9.9),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_xdqffn,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(50.2, 92.6, 16.8, 9.9),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_csx46x,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(58.6, 70.4, 16.6, 10.5),
                                size: Size(158.7, 157.9),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_fx9em6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 157.3, 46.4, 1.0),
                                size: Size(158.7, 157.9),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_5x6pet,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(37.0, 330.0, 277.0, 70.0),
                          size: Size(350.0, 421.0),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: Container(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              // obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: const Color(0xff304ffe)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                labelText: 'username',
                                hintText: 'name or email id',
                                labelStyle:
                                    TextStyle(color: const Color(0xff304ffe)),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  username = value;
                                });
                              },

                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Username is required';
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 441.0, 350.0, 111.0),
                      size: Size(350.0, 552.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 350.0, 111.0),
                            size: Size(350.0, 111.0),
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
                            bounds: Rect.fromLTWH(15.0, 39.0, 320.0, 37.0),
                            size: Size(350.0, 111.0),
                            pinLeft: true,
                            pinRight: true,
                            fixedHeight: true,
                            child: Text(
                              result,
                              style: GoogleFonts.montserrat(
                                fontSize: 28,
                                color: const Color(0xff2f2e41),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(15.0, 13.0, 83.0, 20.0),
                            size: Size(350.0, 111.0),
                            pinLeft: true,
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child: Text(
                              'Password',
                              style: GoogleFonts.montserrat(
                                fontSize: 17,
                                color: const Color(0xffbdbdc5),
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      getPassword();
                    },
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(321.0, 526.0, 18.0, 18.0),
                    size: Size(350.0, 552.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'FontAwsome (sync)' (shape)
                        SvgPicture.string(
                      _svg_g60som,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color(0xff304ffe),
        foregroundColor: Colors.white,
        onPressed: () {
          // Respond to button press
          // _addData();
          sendData();
        },
        icon: Icon(Icons.save),
        label: Text('SAVE'),
      ),
    );
  }
}

const String _svg_8pl8nz =
    '<svg viewBox="74.8 1.9 34.8 40.0" ><path transform="translate(-511.38, -212.11)" d="M 616.0526733398438 253.947509765625 L 590.0064086914063 253.947509765625 C 588.8509521484375 253.9509887695313 587.7584228515625 253.4215393066406 587.0452270507813 252.5124206542969 L 587.0452270507813 252.5124206542969 C 586.319091796875 251.5947570800781 586.0567626953125 250.3934631347656 586.3343505859375 249.2566223144531 C 588.73486328125 239.2018737792969 588.7347412109375 228.7232055664063 586.3341674804688 218.6684875488281 C 586.056884765625 217.5317077636719 586.3191528320313 216.3305358886719 587.045166015625 215.4128723144531 C 587.75830078125 214.5036926269531 588.8508911132813 213.9742431640625 590.0064086914063 213.977783203125 L 616.0525512695313 213.977783203125 C 617.9096069335938 213.9830932617188 619.4903564453125 215.3311462402344 619.7888793945313 217.1642150878906 C 621.5029907226563 228.2975158691406 621.5029907226563 239.6275939941406 619.788818359375 250.7609252929688 C 619.4904174804688 252.5939331054688 617.9097900390625 253.9420471191406 616.0526733398438 253.947509765625 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_piwz7v =
    '<svg viewBox="76.8 3.8 30.9 36.1" ><path transform="translate(-515.42, -216.15)" d="M 594.0486450195313 219.9779663085938 C 593.4937133789063 219.9761047363281 592.9689331054688 220.2301940917969 592.626220703125 220.6666564941406 C 592.2734375 221.1138610839844 592.1464233398438 221.69873046875 592.2821044921875 222.2519836425781 C 594.7544555664063 232.6071472167969 594.7545776367188 243.3988952636719 592.2822875976563 253.7541198730469 C 592.1465454101563 254.3071899414063 592.2734375 254.8919982910156 592.626220703125 255.339111328125 L 592.6264038085938 255.3392639160156 C 592.9689331054688 255.7757873535156 593.4937133789063 256.0299682617188 594.0486450195313 256.028076171875 L 620.0947875976563 256.0281066894531 C 620.986572265625 256.0283813476563 621.7478637695313 255.3834838867188 621.8941040039063 254.5036926269531 C 623.5778198242188 243.5677185058594 623.5778198242188 232.4384155273438 621.8941040039063 221.5024108886719 C 621.7478637695313 220.6225891113281 620.986572265625 219.9776916503906 620.0947875976563 219.97802734375 L 594.0486450195313 219.9779663085938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ox0mym =
    '<svg viewBox="83.4 8.6 17.6 4.7" ><path transform="translate(-528.94, -225.92)" d="M 627.923828125 239.1701049804688 L 614.2559204101563 239.1701049804688 C 613.1741333007813 239.1689147949219 612.29736328125 238.2922058105469 612.2962036132813 237.2103576660156 L 612.2962036132813 236.4445190429688 C 612.29736328125 235.3627014160156 613.1741333007813 234.4859924316406 614.2559204101563 234.4848022460938 L 627.923828125 234.4848022460938 C 629.0057373046875 234.4859924316406 629.8823852539063 235.3627014160156 629.883544921875 236.4445495605469 L 629.883544921875 237.2102966308594 C 629.8824462890625 238.2921447753906 629.0057373046875 239.1689147949219 627.923828125 239.1701049804688 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_v1me9z =
    '<svg viewBox="83.4 18.2 17.6 4.7" ><path transform="translate(-528.94, -245.86)" d="M 627.9238891601563 268.7953491210938 L 614.2560424804688 268.7953491210938 C 613.1741943359375 268.794189453125 612.2974853515625 267.9175415039063 612.2963256835938 266.8356323242188 L 612.2963256835938 266.0699462890625 C 612.2974853515625 264.9880981445313 613.1741943359375 264.1113891601563 614.2560424804688 264.1102294921875 L 627.9238891601563 264.1102294921875 C 629.0057373046875 264.1113891601563 629.8824462890625 264.9881591796875 629.8836669921875 266.0699462890625 L 629.8836669921875 266.8357543945313 C 629.8824462890625 267.9175415039063 629.0057373046875 268.794189453125 627.9238891601563 268.7953491210938 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_87r52k =
    '<svg viewBox="83.4 27.9 17.6 4.7" ><path transform="translate(-528.94, -265.81)" d="M 627.923828125 298.4211120605469 L 614.2559204101563 298.4211120605469 C 613.1741333007813 298.419921875 612.29736328125 297.543212890625 612.2962036132813 296.4613647460938 L 612.2962036132813 295.695556640625 C 612.29736328125 294.6137084960938 613.1741333007813 293.7369995117188 614.2559204101563 293.73583984375 L 627.923828125 293.73583984375 C 629.0057373046875 293.7369995117188 629.8823852539063 294.6137390136719 629.883544921875 295.695556640625 L 629.883544921875 296.4613647460938 C 629.8823852539063 297.543212890625 629.0057373046875 298.419921875 627.923828125 298.4211120605469 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6h25bc =
    '<svg viewBox="123.8 26.7 34.8 40.0" ><path transform="translate(-612.39, -263.28)" d="M 766.052734375 329.9474792480469 L 740.0064697265625 329.9474792480469 C 738.8509521484375 329.9509582519531 737.758544921875 329.4214782714844 737.0452880859375 328.5123901367188 L 737.0452880859375 328.5123901367188 C 736.319091796875 327.5947265625 736.0567626953125 326.3934326171875 736.3343505859375 325.256591796875 C 738.73486328125 315.2018432617188 738.73486328125 304.7231750488281 736.334228515625 294.66845703125 C 736.056884765625 293.5316772460938 736.3192138671875 292.3305053710938 737.045166015625 291.412841796875 C 737.75830078125 290.503662109375 738.8509521484375 289.9741821289063 740.0064697265625 289.9777221679688 L 766.0526123046875 289.9777221679688 C 767.9097900390625 289.9830627441406 769.490478515625 291.3311462402344 769.7889404296875 293.1641845703125 C 771.5030517578125 304.2974853515625 771.5030517578125 315.6275634765625 769.7889404296875 326.7608947753906 C 769.490478515625 328.5939025878906 767.909912109375 329.9420166015625 766.052734375 329.9474182128906 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_q7r59p =
    '<svg viewBox="125.8 28.7 30.9 36.1" ><path transform="translate(-616.43, -267.32)" d="M 744.0486450195313 295.9779663085938 C 743.4937133789063 295.97607421875 742.968994140625 296.230224609375 742.6263427734375 296.6666870117188 C 742.2734985351563 297.1138305664063 742.1465454101563 297.69873046875 742.2821655273438 298.251953125 C 744.7545166015625 308.6071166992188 744.7545166015625 319.3988647460938 742.2822265625 329.7540893554688 C 742.1465454101563 330.3071899414063 742.2734375 330.8920288085938 742.626220703125 331.3390502929688 L 742.6264038085938 331.3392333984375 C 742.968994140625 331.7758178710938 743.4937133789063 332.0299682617188 744.0486450195313 332.028076171875 L 770.0947875976563 332.028076171875 C 770.9866333007813 332.0283813476563 771.7478637695313 331.3834838867188 771.8941040039063 330.5037231445313 C 773.5778198242188 319.5676879882813 773.5778198242188 308.4384155273438 771.8941040039063 297.50244140625 C 771.7478637695313 296.6226196289063 770.9866333007813 295.9777221679688 770.0947875976563 295.97802734375 L 744.0486450195313 295.9779663085938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bt0ycc =
    '<svg viewBox="71.7 54.6 35.2 40.3" ><path transform="translate(-504.98, -320.86)" d="M 606.7159423828125 415.7740783691406 L 580.669677734375 415.7740783691406 C 579.464111328125 415.7776794433594 578.3242797851563 415.2252502441406 577.5802612304688 414.2767639160156 C 576.822998046875 413.3198547363281 576.5494995117188 412.0672302246094 576.8387451171875 410.8817443847656 C 579.2333374023438 400.8520812988281 579.2332763671875 390.3995666503906 576.838623046875 380.3699035644531 C 576.5494995117188 379.1844177246094 576.8231201171875 377.9318542480469 577.5802001953125 376.9750061035156 C 578.3242797851563 376.0264587402344 579.464111328125 375.4740295410156 580.669677734375 375.4776916503906 L 606.7156982421875 375.4776916503906 C 608.6533203125 375.4834899902344 610.3023681640625 376.8901062011719 610.6134643554688 378.8025207519531 C 612.3302612304688 389.9524230957031 612.3302612304688 401.2994079589844 610.6134643554688 412.4492492675781 C 610.30224609375 414.3616027832031 608.6534423828125 415.7681579589844 606.7159423828125 415.7740783691406 Z" fill="#f2f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7tvdn6 =
    '<svg viewBox="132.4 38.3 17.6 4.7" ><path transform="translate(-629.94, -287.19)" d="M 777.9238891601563 330.1701354980469 L 764.2560424804688 330.1701354980469 C 763.1741333007813 330.1689758300781 762.2975463867188 329.2922668457031 762.2963256835938 328.21044921875 L 762.2963256835938 327.4446105957031 C 762.2975463867188 326.3627624511719 763.1741333007813 325.486083984375 764.2560424804688 325.48486328125 L 777.9238891601563 325.48486328125 C 779.0057983398438 325.486083984375 779.8825073242188 326.3627624511719 779.8836059570313 327.4446105957031 L 779.8836059570313 328.2103576660156 C 779.8826293945313 329.292236328125 779.0057983398438 330.1690063476563 777.9238891601563 330.170166015625 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_c918vt =
    '<svg viewBox="132.4 48.0 17.6 4.7" ><path transform="translate(-629.94, -307.14)" d="M 777.9238891601563 359.7953491210938 L 764.2560424804688 359.7953491210938 C 763.1741333007813 359.794189453125 762.2974243164063 358.91748046875 762.2963256835938 357.8356323242188 L 762.2963256835938 357.0699462890625 C 762.2974243164063 355.9880981445313 763.1741333007813 355.1113891601563 764.2560424804688 355.1102294921875 L 777.9238891601563 355.1102294921875 C 779.0057983398438 355.1113891601563 779.8825073242188 355.9880981445313 779.8837280273438 357.0699462890625 L 779.8836059570313 357.8357543945313 C 779.8825073242188 358.9175415039063 779.0056762695313 359.794189453125 777.9238891601563 359.7953491210938 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mvzbi6 =
    '<svg viewBox="84.2 70.1 9.1 9.1" ><path transform="translate(-530.68, -352.69)" d="M 623.059814453125 426.3429870605469 L 620.44677734375 426.3429870605469 L 620.44677734375 423.7298889160156 C 620.44677734375 423.1886901855469 620.008056640625 422.7500305175781 619.466796875 422.7500305175781 C 618.9256591796875 422.7500305175781 618.4869384765625 423.1886901855469 618.4869384765625 423.7298889160156 L 618.4869384765625 426.3429870605469 L 615.8738403320313 426.3429870605469 C 615.3327026367188 426.3429870605469 614.8939819335938 426.7817077636719 614.8939819335938 427.3229064941406 C 614.8939819335938 427.8640441894531 615.3327026367188 428.3027648925781 615.8738403320313 428.3027648925781 L 618.4869384765625 428.3027648925781 L 618.4869384765625 430.9158020019531 C 618.4869384765625 431.4570007324219 618.9256591796875 431.8957214355469 619.466796875 431.8957214355469 C 620.008056640625 431.8957214355469 620.44677734375 431.4570007324219 620.44677734375 430.9158020019531 L 620.44677734375 428.3027648925781 L 623.059814453125 428.3027648925781 C 623.6010131835938 428.3027648925781 624.0397338867188 427.8640441894531 624.0397338867188 427.3229064941406 C 624.0397338867188 426.7817077636719 623.6010131835938 426.3429870605469 623.059814453125 426.3429870605469 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3lnv1f =
    '<svg viewBox="83.1 0.0 16.7 5.6" ><path transform="translate(-528.33, -208.25)" d="M 626.5823364257813 213.802734375 L 612.86376953125 213.802734375 C 612.0524291992188 213.8018493652344 611.3948364257813 213.1443176269531 611.3939208984375 212.3328857421875 L 611.3939208984375 209.7198181152344 C 611.3948364257813 208.9084167480469 612.0524291992188 208.2508850097656 612.86376953125 208.25 L 626.5823364257813 208.25 C 627.3937377929688 208.2509155273438 628.05126953125 208.908447265625 628.0521850585938 209.7198181152344 L 628.0521850585938 212.3328857421875 C 628.05126953125 213.144287109375 627.3937377929688 213.8018188476563 626.5823364257813 213.802734375 Z" fill="#cccccc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xj940e =
    '<svg viewBox="132.7 25.2 16.7 5.6" ><path transform="translate(-630.68, -260.1)" d="M 778.5824584960938 290.8027648925781 L 764.8638305664063 290.8027648925781 C 764.0524291992188 290.8018493652344 763.3949584960938 290.1443176269531 763.3939819335938 289.3329467773438 L 763.3939819335938 286.7198486328125 C 763.3949584960938 285.9084777832031 764.0524291992188 285.2509155273438 764.8639526367188 285.25 L 778.5824584960938 285.25 C 779.3937377929688 285.2509155273438 780.0513305664063 285.9084777832031 780.0521850585938 286.7198486328125 L 780.0521850585938 289.3329162597656 C 780.0513305664063 290.1443176269531 779.3937377929688 290.8018493652344 778.5824584960938 290.8027648925781 Z" fill="#cccccc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mj4opc =
    '<svg viewBox="28.9 138.4 5.3 15.4" ><path transform="translate(-59.66, -285.36)" d="M 88.59465026855469 439.2188110351563 L 92.59917449951172 439.2188110351563 L 93.85115051269531 423.7730712890625 L 88.59400177001953 423.7730712890625 L 88.59465026855469 439.2188110351563 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l0n7cq =
    '<svg viewBox="27.9 152.6 12.9 5.2" ><path transform="translate(-414.64, -522.75)" d="M 442.552001953125 675.307373046875 L 450.4381103515625 675.3070068359375 L 450.4384765625 675.3070068359375 C 453.2142333984375 675.3070068359375 455.4642944335938 677.5571899414063 455.4642333984375 680.3328247070313 L 455.4642333984375 680.4959716796875 L 442.55224609375 680.4964599609375 L 442.552001953125 675.307373046875 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x9vpgm =
    '<svg viewBox="7.4 138.4 5.9 15.4" ><path transform="translate(-15.21, -285.36)" d="M 22.59465408325195 439.2188110351563 L 26.59916687011719 439.2188110351563 L 28.50440979003906 423.7730712890625 L 22.5939998626709 423.7730712890625 L 22.59465408325195 439.2188110351563 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_hm6t02 =
    '<svg viewBox="6.4 152.6 12.9 5.2" ><path transform="translate(-370.19, -522.75)" d="M 376.552001953125 675.307373046875 L 384.4381713867188 675.3070068359375 L 384.4384765625 675.3070068359375 C 387.2142333984375 675.3070068359375 389.4642944335938 677.5571899414063 389.4642333984375 680.3328247070313 L 389.4642333984375 680.4959716796875 L 376.55224609375 680.4964599609375 L 376.552001953125 675.307373046875 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_spey0g =
    '<svg viewBox="4.9 89.8 31.0 59.1" ><path transform="translate(-367.09, -393.46)" d="M 375.1829223632813 542.4469604492188 C 374.7747192382813 542.4468994140625 374.3812255859375 542.2933349609375 374.080810546875 542.0165405273438 L 374.08056640625 542.016357421875 C 373.7547607421875 541.7191162109375 373.564208984375 541.3018798828125 373.5527954101563 540.8609619140625 L 371.947021484375 483.3040161132813 L 394.7495727539063 489.0044555664063 L 401.7850952148438 510.1106567382813 C 402.6923828125 512.8258666992188 403.0850830078125 515.6864624023438 402.9431762695313 518.5457153320313 L 402.0695190429688 539.0048217773438 C 402.0281982421875 539.8755493164063 401.3098754882813 540.5599365234375 400.4381713867188 540.5592041015625 L 396.6136474609375 540.5592041015625 C 395.797607421875 540.555908203125 395.1080322265625 539.9533081054688 394.9953002929688 539.14501953125 L 392.26171875 516.5611572265625 C 392.0228881835938 514.7993774414063 391.4065551757813 513.10986328125 390.454833984375 511.6080932617188 L 385.075439453125 503.0908203125 C 385.001708984375 502.9741821289063 384.8627319335938 502.9164428710938 384.7281494140625 502.946533203125 C 384.5935668945313 502.9765625 384.4923095703125 503.087890625 384.4751586914063 503.2247924804688 L 380.2536010742188 540.816162109375 C 380.1600341796875 541.6031494140625 379.5140991210938 542.2090454101563 378.72265625 542.2521362304688 L 375.2760009765625 542.4439086914063 C 375.2449951171875 542.4457397460938 375.2139892578125 542.4469604492188 375.1829223632813 542.4469604492188 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3htpxi =
    '<svg viewBox="3.3 53.9 25.9 43.9" ><path transform="translate(-363.86, -319.44)" d="M 391.4078369140625 417.3263549804688 C 391.2698364257813 417.3261108398438 391.13232421875 417.3086547851563 390.9985961914063 417.2743530273438 L 390.998291015625 417.2743530273438 L 368.3743286132813 411.4734497070313 C 367.5344848632813 411.2583618164063 367.0091552734375 410.42431640625 367.1779174804688 409.5739135742188 L 372.3737182617188 381.5845947265625 C 373.03076171875 378.3004150390625 375.259033203125 375.5484619140625 378.3346557617188 374.2224731445313 C 381.332763671875 372.8955688476563 384.7949829101563 373.1497192382813 387.5670776367188 374.9002685546875 C 387.8838500976563 375.097900390625 388.2029418945313 375.3134155273438 388.5151977539063 375.5408325195313 C 391.063720703125 377.4207763671875 392.5844116210938 380.3861694335938 392.6238403320313 383.5528564453125 L 393.0369873046875 415.670166015625 C 393.0426025390625 416.1064453125 392.8735961914063 416.52685546875 392.567626953125 416.837890625 C 392.2616577148438 417.1489868164063 391.8440551757813 417.3248291015625 391.40771484375 417.326416015625 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jxst13 =
    '<svg viewBox="6.3 81.7 6.6 17.9" ><path transform="translate(-370.02, -376.76)" d="M 376.8612976074219 474.9692993164063 C 376.3149719238281 474.1653442382813 376.1528015136719 473.16064453125 376.4184875488281 472.2255859375 C 376.6841125488281 471.2905883789063 377.3502502441406 470.5211791992188 378.2377014160156 470.1245727539063 L 377.2314147949219 458.4959106445313 L 382.5639953613281 461.3861083984375 L 382.7020568847656 471.9857788085938 C 383.2822570800781 473.5552368164063 382.5969543457031 475.3106689453125 381.1067810058594 476.07177734375 C 379.6167297363281 476.8329467773438 377.7927551269531 476.3593139648438 376.8612365722656 474.9692993164063 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_brm0vv =
    '<svg viewBox="3.9 54.7 17.1 37.1" ><path transform="translate(-365.15, -321.1)" d="M 373.9027404785156 412.9251098632813 C 373.7522583007813 412.9249877929688 373.6023864746094 412.906005859375 373.4566650390625 412.86865234375 C 372.8179321289063 412.705810546875 372.3198547363281 412.2058715820313 372.1592407226563 411.5665893554688 L 369.5386352539063 401.15234375 C 368.622802734375 397.5150146484375 369.0594177246094 393.6688842773438 370.7671813964844 390.3294067382813 L 376.2574768066406 379.5892333984375 C 376.9795532226563 376.9137573242188 379.7139892578125 375.3118286132813 382.4008178710938 375.9901733398438 C 383.7009887695313 376.3184814453125 384.8155517578125 377.1537475585938 385.49560546875 378.3095092773438 C 386.189697265625 379.4818115234375 386.3843994140625 380.8836059570313 386.035888671875 382.20068359375 L 378.2203979492188 399.6774291992188 L 378.313232421875 410.1412963867188 C 378.318115234375 410.8973999023438 377.8506469726563 411.5762939453125 377.1424560546875 411.8412475585938 L 374.5269470214844 412.8125610351563 C 374.3272399902344 412.886962890625 374.1158752441406 412.925048828125 373.9027404785156 412.9251098632813 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_r04ozm =
    '<svg viewBox="33.9 80.8 15.9 13.2" ><path transform="translate(-427.0, -374.72)" d="M 473.1588745117188 468.657470703125 C 472.193115234375 468.5470581054688 471.3258666992188 468.0145874023438 470.7904663085938 467.2033081054688 C 470.2550659179688 466.3919677734375 470.1065063476563 465.3851928710938 470.384765625 464.453857421875 L 460.9146118164063 457.6307373046875 L 466.5838012695313 455.474365234375 L 474.7077026367188 462.2843017578125 C 476.2756958007813 462.8683471679688 477.1590576171875 464.5328369140625 476.7639770507813 466.1588134765625 C 476.3688354492188 467.7847290039063 474.8200073242188 468.858154296875 473.1588745117188 468.657470703125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_704hmw =
    '<svg viewBox="18.0 56.9 26.0 32.1" ><path transform="translate(-394.1, -325.51)" d="M 435.3028564453125 414.4609680175781 C 435.023681640625 414.4607849121094 434.748291015625 414.3957824707031 434.4984741210938 414.2710266113281 L 424.8956909179688 409.4638366699219 C 421.5416259765625 407.7850646972656 418.911376953125 404.9453430175781 417.4940185546875 401.4726867675781 L 412.9351196289063 390.3049011230469 C 411.3785400390625 388.0121765136719 411.9480590820313 384.8948059082031 414.2147216796875 383.3005065917969 C 415.3143310546875 382.5273742675781 416.67822265625 382.2279968261719 418.00048828125 382.4696960449219 C 419.3381958007813 382.7102966308594 420.5239868164063 383.4762878417969 421.293212890625 384.5968322753906 L 429.4411010742188 401.9212951660156 L 437.4324951171875 408.6769714355469 C 438.0089111328125 409.1664733886719 438.218505859375 409.9636535644531 437.9573364257813 410.6733093261719 L 436.9873046875 413.2890930175781 C 436.8606567382813 413.6321105957031 436.6318969726563 413.9280700683594 436.331787109375 414.1370544433594 C 436.0300903320313 414.3479309082031 435.6708984375 414.4610290527344 435.3027954101563 414.4609680175781 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xyp04g =
    '<svg viewBox="15.0 34.8 18.7 17.9" ><path transform="translate(-387.92, -280.07)" d="M 410.0997619628906 332.7682495117188 C 410.5260314941406 332.9547729492188 411.3988952636719 329.558349609375 411.0079040527344 328.8789672851563 C 410.4264221191406 327.8687744140625 410.4607849121094 327.8760375976563 410.0747985839844 327.2076416015625 C 409.6887512207031 326.5392456054688 409.6023864746094 325.6243896484375 410.1022644042969 325.0363159179688 C 410.6021423339844 324.4481811523438 411.7589416503906 324.5262451171875 411.9870300292969 325.2635498046875 C 411.8403015136719 323.863037109375 413.2256164550781 322.7372436523438 414.5978088378906 322.4208984375 C 415.9700622558594 322.1044921875 417.4175109863281 322.3009033203125 418.7972717285156 322.0193481445313 C 420.3985290527344 321.692626953125 422.0646667480469 320.3504028320313 421.4257507324219 318.5894775390625 C 421.3160705566406 318.2963256835938 421.1519470214844 318.0265502929688 420.9419860839844 317.79443359375 C 420.2038269042969 316.9644775390625 419.1712341308594 316.610107421875 418.1616516113281 316.2674560546875 C 416.0614318847656 315.5545654296875 413.9036560058594 314.832763671875 411.6871032714844 314.9114379882813 C 407.9551696777344 315.106689453125 404.6927185058594 317.4926147460938 403.3757019042969 320.9898681640625 C 403.2229919433594 321.4180297851563 403.1046447753906 321.857666015625 403.0218811035156 322.3046875 C 402.2610168457031 326.3955078125 404.6366271972656 330.4306030273438 408.4949645996094 331.9884033203125 L 410.0997619628906 332.7682495117188 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mkoiza =
    '<svg viewBox="12.7 67.1 5.9 22.2" ><path transform="translate(-26.19, -138.27)" d="M 38.90000152587891 227.5540161132813 L 39.08193969726563 216.79833984375 L 44.77938079833984 205.343017578125 L 40.20653533935547 217.1017761230469 L 38.90000152587891 227.5540161132813 Z" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nxdl68 =
    '<svg viewBox="38.0 69.1 44.0 47.5" ><path transform="translate(-435.41, -350.66)" d="M 499.7769775390625 466.936767578125 L 475.7244262695313 456.9434204101563 C 474.656005859375 456.5033569335938 473.8502807617188 455.59521484375 473.54052734375 454.4820556640625 L 473.54052734375 454.4820556640625 C 473.2220458984375 453.3560180664063 473.4407348632813 452.14599609375 474.1331787109375 451.20263671875 C 480.2078247070313 442.8385009765625 484.228271484375 433.1618041992188 485.8692626953125 422.95556640625 C 486.04931640625 421.7993774414063 486.7523803710938 420.7908325195313 487.7749633789063 420.221923828125 C 488.7823486328125 419.656005859375 489.9944458007813 419.5862426757813 491.0601806640625 420.0328369140625 L 515.11279296875 430.0263061523438 C 516.8257446289063 430.7437744140625 517.7682495117188 432.59521484375 517.3406372070313 434.4024047851563 C 514.6519165039063 445.3414306640625 510.3046875 455.8043823242188 504.4500122070313 465.4279174804688 C 503.4710693359375 467.0061645507813 501.4939575195313 467.64453125 499.7769165039063 466.936767578125 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jyifav =
    '<svg viewBox="40.0 71.0 40.1 43.6" ><path transform="translate(-439.45, -354.7)" d="M 494.3506469726563 425.8851013183594 C 493.8389282226563 425.6705017089844 493.2568359375 425.7037658691406 492.77294921875 425.9753723144531 C 492.2755126953125 426.2529602050781 491.933837890625 426.7443542480469 491.8468627929688 427.3072814941406 C 490.1568603515625 437.8185119628906 486.0162963867188 447.7843933105469 479.7601318359375 456.3984680175781 C 479.4225463867188 456.8571472167969 479.3153076171875 457.4458312988281 479.4696044921875 457.9940490722656 L 479.4696655273438 457.9942932128906 C 479.6185302734375 458.5289001464844 480.005615234375 458.9649353027344 480.518798828125 459.1761169433594 L 504.5714111328125 469.1695861816406 C 505.3949584960938 469.5120544433594 506.3453369140625 469.2085876464844 506.8179321289063 468.4522399902344 C 512.56884765625 458.9992370605469 516.8389282226563 448.7217102050781 519.4800415039063 437.9766540527344 C 519.6825561523438 437.1080627441406 519.2269897460938 436.2204895019531 518.4033203125 435.8785705566406 L 494.3506469726563 425.8851013183594 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xdqffn =
    '<svg viewBox="53.9 83.7 16.8 9.9" ><path transform="translate(-468.16, -380.81)" d="M 535.8698120117188 474.2413330078125 L 523.2479858398438 468.9971923828125 C 522.2494506835938 468.5809936523438 521.7762451171875 467.4349975585938 522.190185546875 466.4354858398438 L 522.4840698242188 465.728271484375 C 522.900146484375 464.729736328125 524.0462036132813 464.2564697265625 525.045654296875 464.6704711914063 L 537.6675415039063 469.9146728515625 C 538.6660766601563 470.330810546875 539.1392822265625 471.476806640625 538.725341796875 472.476318359375 L 538.4314575195313 473.1835327148438 C 538.0152587890625 474.18212890625 536.8693237304688 474.6553344726563 535.8698120117188 474.2413330078125 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_csx46x =
    '<svg viewBox="50.2 92.6 16.8 9.9" ><path transform="translate(-460.51, -399.24)" d="M 524.5028686523438 501.600341796875 L 511.8809814453125 496.3561401367188 C 510.8824462890625 495.9400024414063 510.4091796875 494.7939453125 510.8231811523438 493.7944946289063 L 511.1170043945313 493.0872802734375 C 511.533203125 492.0886840820313 512.6791381835938 491.615478515625 513.6786499023438 492.0294799804688 L 526.3006591796875 497.2737426757813 C 527.2991943359375 497.68994140625 527.7725219726563 498.8358764648438 527.3584594726563 499.8353881835938 L 527.064697265625 500.5426025390625 C 526.6483764648438 501.5411987304688 525.5023803710938 502.014404296875 524.5028686523438 501.600341796875 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fx9em6 =
    '<svg viewBox="58.6 70.4 16.6 10.5" ><path transform="translate(-477.85, -353.31)" d="M 550.6141357421875 434.1746215820313 C 550.42529296875 434.1744995117188 550.238037109375 434.1378173828125 550.06298828125 434.066650390625 L 537.3447265625 428.924560546875 C 536.5927734375 428.61962890625 536.229736328125 427.7636108398438 536.5328369140625 427.0110473632813 L 537.5123291015625 424.58837890625 C 537.8167724609375 423.8358764648438 538.6734619140625 423.4725341796875 539.426025390625 423.7767333984375 L 552.1444091796875 428.9188232421875 C 552.896240234375 429.2238159179688 553.2593994140625 430.079833984375 552.9561767578125 430.8323974609375 L 551.9766845703125 433.2550048828125 C 551.7515869140625 433.8099975585938 551.2130126953125 434.1734619140625 550.6141357421875 434.1746215820313 Z" fill="#cccccc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5x6pet =
    '<svg viewBox="0.0 157.3 46.4 1.0" ><path transform="translate(-357.08, -532.48)" d="M 403.1381530761719 690.4032592773438 L 357.4096374511719 690.4032592773438 C 357.229248046875 690.4032592773438 357.0830383300781 690.2570190429688 357.0830383300781 690.07666015625 C 357.0830383300781 689.8963012695313 357.229248046875 689.7500610351563 357.4096374511719 689.7500610351563 L 403.1381530761719 689.7500610351563 C 403.3185119628906 689.7500610351563 403.4647521972656 689.8963012695313 403.4647521972656 690.07666015625 C 403.4647521972656 690.2570190429688 403.3185119628906 690.4032592773438 403.1381530761719 690.4032592773438 Z" fill="#cccccc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g60som =
    '<svg viewBox="321.0 526.0 18.0 18.0" ><path transform="translate(321.0, 526.0)" d="M 15.49160194396973 0.4419140815734863 L 15.63222694396973 3.351796627044678 C 13.9789924621582 1.401513814926147 11.55073738098145 0.2783098220825195 8.994023323059082 0.2812510430812836 C 4.736601829528809 0.28125 1.192148327827454 3.337031364440918 0.4320702850818634 7.376485347747803 C 0.4093069732189178 7.499702930450439 0.442494660615921 7.626663208007813 0.5226444602012634 7.722978591918945 C 0.6027944087982178 7.81929349899292 0.721611499786377 7.874996662139893 0.8469141125679016 7.875000953674316 L 2.571328163146973 7.875 C 2.767043352127075 7.8747878074646 2.936913013458252 7.739997863769531 2.981601476669312 7.549453735351563 C 3.556234836578369 5.1646409034729 5.486100196838379 3.344899892807007 7.900524139404297 2.911218166351318 C 10.31494903564453 2.47753643989563 12.75747394561768 3.511903762817383 14.12613201141357 5.547657012939453 L 10.55917930603027 5.376796722412109 C 10.44386196136475 5.371313095092773 10.33133506774902 5.413327217102051 10.24782848358154 5.49304723739624 C 10.1643238067627 5.572765350341797 10.1171350479126 5.683224201202393 10.11726570129395 5.798671245574951 L 10.11726570129395 7.465429306030273 C 10.11726570129395 7.69842529296875 10.30614566802979 7.887304306030273 10.53914070129395 7.887304306030273 L 17.578125 7.887304306030273 C 17.81112098693848 7.887304306030273 18 7.69842529296875 18 7.465429306030273 L 18 0.421875 C 18 0.1888798773288727 17.81112098693848 0 17.578125 0 L 15.91277408599854 0 C 15.79744720458984 6.155670416774228e-05 15.68717479705811 0.04733314737677574 15.60760974884033 0.1308168321847916 C 15.52804374694824 0.2143005430698395 15.48612308502197 0.3267176747322083 15.49160194396973 0.4419139325618744 Z M 8.994023323059082 15.1875 C 6.933902740478516 15.18926334381104 5.008642196655273 14.16333770751953 3.861211538314819 12.45234680175781 L 7.440117359161377 12.62355327606201 C 7.555435180664063 12.62903881072998 7.667963027954102 12.5870246887207 7.751469135284424 12.50730609893799 C 7.834973335266113 12.42758560180664 7.882161617279053 12.31712913513184 7.882031440734863 12.20167827606201 L 7.882031440734863 10.53527450561523 C 7.882031440734863 10.30227851867676 7.693151473999023 10.11339950561523 7.460156440734863 10.11339950561523 L 0.421875 10.11339950561523 C 0.1888798773288727 10.11339950561523 -8.050761124422934e-08 10.30227851867676 -1.345238942462856e-08 10.53527450561523 L -1.345238942462856e-08 17.578125 C -1.345238942462856e-08 17.81112098693848 0.1888798922300339 18 0.4218750298023224 18 L 2.086523294448853 18 C 2.202163934707642 18.00014495849609 2.312794923782349 17.95281791687012 2.392547130584717 17.86907386779785 C 2.472299337387085 17.78533363342285 2.514180660247803 17.67252731323242 2.508398056030273 17.55703163146973 L 2.362499952316284 14.6541805267334 C 4.015387058258057 16.60041427612305 6.440621376037598 17.72116851806641 8.994023323059082 17.71875 C 13.25179862976074 17.71875 16.79625129699707 14.66296863555908 17.55632781982422 10.62351512908936 C 17.57909393310547 10.50029754638672 17.54590606689453 10.37333869934082 17.46575355529785 10.27702140808105 C 17.38560676574707 10.18070507049561 17.26678848266602 10.12500381469727 17.14148330688477 10.125 L 15.41707229614258 10.125 C 15.22135639190674 10.12521266937256 15.05148696899414 10.2600040435791 15.00679874420166 10.45054721832275 C 14.33847141265869 13.22958469390869 11.85229301452637 15.188232421875 8.994023323059082 15.18749809265137 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
