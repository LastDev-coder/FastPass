import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:password_manager_project/Login.dart';
import 'package:password_manager_project/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var email;
  var password;

  Future<void> _Register() async {
    if (formkey.currentState.validate()) {
      try {
        final snackBar = _scaffoldKey.currentState.showSnackBar(
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

        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);
        final snackBar2 = _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            elevation: 4.0,
            content: Text('Your Account Successfully Created '),
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
              textColor: Colors.cyan,
              label: 'OK',
              onPressed: () {},
            ),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          final snackBar = _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              elevation: 4.0,
              content: Text('The password provided is too weak.'),
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
                textColor: Colors.red,
                label: 'OK',
                onPressed: () {},
              ),
            ),
          );
        } else if (e.code == 'email-already-in-use') {
          final snackBar = _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              elevation: 4.0,
              content: Text('The email already exists for another account.'),
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
                textColor: Colors.red,
                label: 'OK',
                onPressed: () {},
              ),
            ),
          );
        }
      } catch (e) {
        print(e);
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
              bounds: Rect.fromLTWH(59.0, 794.2, 278.2, 25.8),
              size: Size(412.0, 847.0),
              pinLeft: true,
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.8, 197.0, 19.0),
                    size: Size(278.2, 25.8),
                    pinLeft: true,
                    pinTop: true,
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
                    bounds: Rect.fromLTWH(202.0, 0.0, 76.2, 25.8),
                    size: Size(278.2, 25.8),
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
                        bounds: Rect.fromLTWH(211.0, 2.8, 61.0, 19.0),
                        size: Size(278.2, 25.8),
                        pinRight: true,
                        pinTop: true,
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
                          bounds: Rect.fromLTWH(37.0, 310.0, 277.0, 70.0),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: const Color(0xfff44336)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                labelText: 'Email',
                                labelStyle:
                                    TextStyle(color: const Color(0xfff44336)),
                                hintText: 'example@gmail.com',
                              ),
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },

                              validator: (String value) {
                                if (EmailValidator.validate(value)) {
                                  null;
                                } else {
                                  return "Please enter a valid email";
                                }
                              },
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(37.0, 400.0, 277.0, 70.0),
                          size: Size(350.0, 600.0),
                          pinLeft: true,
                          pinRight: true,
                          fixedHeight: true,
                          child: Container(
                            child: TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 2, color: const Color(0xfff44336)),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                labelText: 'Password',
                                labelStyle:
                                    TextStyle(color: const Color(0xfff44336)),
                                hintText: 'Enter your password',
                              ),
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              validator: (String value) {
                                if (value.length < 4) {
                                  return 'Password must be at least 4 characters';
                                } else {
                                  null;
                                }
                              },
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.0, 76.0, 270.0, 40.0),
                          size: Size(350.0, 600.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          fixedHeight: true,
                          child: Text(
                            'Please create an account to get all features.',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              color: const Color(0xff2f2e41),
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(44.0, 33.0, 236.0, 37.0),
                          size: Size(350.0, 600.0),
                          pinLeft: true,
                          pinTop: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Text(
                            'Sign Up',
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
                          bounds: Rect.fromLTWH(86.0, 123.0, 177.1, 145.7),
                          size: Size(350.0, 600.0),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(128.7, 46.8, 40.7, 91.5),
                                size: Size(177.1, 145.7),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_bkxi98,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(134.5, 98.0, 42.7, 41.4),
                                size: Size(177.1, 145.7),
                                pinRight: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_h5h6l1,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 135.3, 104.9, 10.4),
                                size: Size(177.1, 145.7),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xffe6e6e6),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(8.0, 111.5, 31.4, 31.4),
                                size: Size(177.1, 145.7),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xfff44336),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(15.3, 120.7, 16.8, 13.2),
                                size: Size(177.1, 145.7),
                                pinLeft: true,
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_t4urux,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(50.6, 73.4, 16.3, 14.8),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_6mcqqf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(64.5, 98.0, 25.8, 9.7),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_bn1edt,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(58.8, 108.1, 24.8, 32.4),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_xrvc7w,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(76.1, 135.7, 13.3, 7.2),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_mrn0iw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(43.1, 122.1, 8.2, 14.7),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_jx1a78,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(51.8, 74.9, 10.4, 10.4),
                                size: Size(177.1, 145.7),
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
                                bounds: Rect.fromLTWH(50.5, 81.7, 11.3, 12.3),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_isq9ni,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(42.5, 111.0, 24.0, 17.0),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_rwslce,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(45.8, 121.4, 15.3, 20.5),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_5tvrwi,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(47.6, 132.3, 4.8, 7.0),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_tqdape,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(30.7, 93.1, 12.9, 24.7),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_cvtz0u,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(38.2, 87.4, 26.3, 29.7),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_moks2v,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(60.3, 90.4, 9.3, 15.1),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_g63al7,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(46.7, 71.8, 20.4, 17.0),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_dapi3l,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(85.7, 0.0, 71.3, 142.9),
                                size: Size(177.1, 145.7),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Path 33' (shape)
                                    SvgPicture.string(
                                  _svg_k9ppqf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(89.1, 3.2, 64.4, 136.4),
                                size: Size(177.1, 145.7),
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                fixedWidth: true,
                                child:
                                    // Adobe XD layer: 'Path 34' (shape)
                                    SvgPicture.string(
                                  _svg_ongghw,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(116.3, 122.9, 10.2, 10.2),
                                size: Size(177.1, 145.7),
                                pinBottom: true,
                                fixedWidth: true,
                                fixedHeight: true,
                                child:
                                    // Adobe XD layer: 'Ellipse 7' (shape)
                                    Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(9999.0, 9999.0)),
                                    color: const Color(0xffe6e6e6),
                                  ),
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(99.8, 80.8, 43.0, 2.0),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_wlho4h,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(99.8, 104.3, 43.0, 2.0),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_oedibo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(99.8, 86.8, 19.5, 2.0),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_fffjay,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(99.8, 92.5, 43.0, 2.0),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_f6pcx2,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(99.8, 98.5, 19.5, 2.0),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_g269m6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(107.4, 35.3, 27.8, 28.9),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_og1nyf,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(113.2, 57.2, 16.2, 1.5),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_x335t6,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(113.2, 52.9, 16.2, 1.5),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_9hiedi,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(116.7, 40.8, 9.1, 9.1),
                                size: Size(177.1, 145.7),
                                fixedWidth: true,
                                fixedHeight: true,
                                child: SvgPicture.string(
                                  _svg_32c8hs,
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
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(173.0, 540.0, 160.5, 45.0),
                    size: Size(350.0, 600.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 160.5, 45.0),
                          size: Size(160.5, 45.0),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromSize(
                                bounds: Rect.fromLTWH(0.0, 0.0, 160.5, 45.0),
                                size: Size(160.5, 45.0),
                                pinLeft: true,
                                pinRight: true,
                                pinTop: true,
                                pinBottom: true,
                                child: SvgPicture.string(
                                  _svg_bhigzo,
                                  allowDrawingOutsideViewBox: true,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Pinned.fromSize(
                            bounds: Rect.fromLTWH(17.0, 9.0, 127.3, 27.0),
                            size: Size(160.5, 45.0),
                            pinLeft: true,
                            pinRight: true,
                            fixedHeight: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(98.5, 2.7, 28.8, 21.6),
                                  size: Size(127.3, 27.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child:
                                      // Adobe XD layer: 'FontAwsome (hand-po…' (shape)
                                      SvgPicture.string(
                                    _svg_tbsq74,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 98.0, 27.0),
                                  size: Size(127.3, 27.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'SIGN UP',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      color: const Color(0xfff44336),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            _Register();

                            //      try {
                            //        FirebaseAuth firebaseAuth = FirebaseAuth.instance;
                            //
                            //     final    FirebaseUser user = (await firebaseAuth
                            //            .createUserWithEmailAndPassword
                            //          (email: email, password: password)
                            //            .catchError((error) {
                            //          SnackBar(
                            //            elevation: 4.0,
                            //            //behavior: SnackBarBehavior.floating,
                            //            content: Text(error.message),
                            //            duration: new Duration(seconds: 3),
                            //            shape: RoundedRectangleBorder(
                            //              borderRadius: BorderRadius.only(
                            //                topLeft: Radius.circular(10.0),
                            //                topRight: Radius.circular(10.0),
                            //                bottomRight: Radius.circular(10.0),
                            //                bottomLeft: Radius.circular(10.0),
                            //              ),
                            //            ),
                            //            behavior: SnackBarBehavior.floating,
                            //
                            //            //      backgroundColor: Colors.black87,
                            //            action: SnackBarAction(
                            //              textColor: Colors.red,
                            //              label: 'OK',
                            //              onPressed: () {},
                            //            ),
                            //          );
                            //        })
                            //        ).user;
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => home(user: user,)));
                            //
                            //
                            //      }catch(e){
                            //        final snackBar =
                            //            _scaffoldKey.currentState.showSnackBar(
                            //              SnackBar(
                            //                elevation: 4.0,
                            //                //behavior: SnackBarBehavior.floating,
                            //                content: Text(e.message),
                            //                duration: new Duration(seconds: 3),
                            //                shape: RoundedRectangleBorder(
                            //                  borderRadius: BorderRadius.only(
                            //                    topLeft: Radius.circular(10.0),
                            //                    topRight: Radius.circular(10.0),
                            //                    bottomRight: Radius.circular(10.0),
                            //                    bottomLeft: Radius.circular(10.0),
                            //                  ),
                            //                ),
                            //                behavior: SnackBarBehavior.floating,
                            //
                            //                //      backgroundColor: Colors.black87,
                            //                action: SnackBarAction(
                            //                  textColor: Colors.red,
                            //                  label: 'OK',
                            //                  onPressed: () {},
                            //                ),
                            //              ),
                            //            );
                            //      }
                            // if (formkey.currentState.validate()) {
                            //   register();
                            // }

                            // if (formkey.currentState.validate()) {
                            //   FirebaseUser user;
                            //   final snackBar =
                            //   _scaffoldKey.currentState.showSnackBar(
                            //     SnackBar(
                            //       elevation: 4.0,
                            //       //behavior: SnackBarBehavior.floating,
                            //       content: Text("Processing..."),
                            //       duration: new Duration(seconds: 3),
                            //       shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.only(
                            //           topLeft: Radius.circular(10.0),
                            //           topRight: Radius.circular(10.0),
                            //           bottomRight: Radius.circular(10.0),
                            //           bottomLeft: Radius.circular(10.0),
                            //         ),
                            //       ),
                            //       behavior: SnackBarBehavior.floating,
                            //
                            //       //      backgroundColor: Colors.black87,
                            //       action: SnackBarAction(
                            //         textColor: Colors.yellow,
                            //         label: 'OK',
                            //         onPressed: () {},
                            //       ),
                            //     ),
                            //   );
                            //
                            //   try {
                            //
                            //
                            //     user = (await FirebaseAuth.instance
                            //           .createUserWithEmailAndPassword(
                            //       email: email, password: password))
                            //       .user;
                            //
                            //     //      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            //
                            //   } catch (e) {
                            //     final snackBar =
                            //     _scaffoldKey.currentState.showSnackBar(
                            //       SnackBar(
                            //         elevation: 4.0,
                            //         //behavior: SnackBarBehavior.floating,
                            //         content: Text(e.message),
                            //         duration: new Duration(seconds: 3),
                            //         shape: RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.only(
                            //             topLeft: Radius.circular(10.0),
                            //             topRight: Radius.circular(10.0),
                            //             bottomRight: Radius.circular(10.0),
                            //             bottomLeft: Radius.circular(10.0),
                            //           ),
                            //         ),
                            //         behavior: SnackBarBehavior.floating,
                            //
                            //         //      backgroundColor: Colors.black87,
                            //         action: SnackBarAction(
                            //           textColor: Colors.red,
                            //           label: 'OK',
                            //           onPressed: () {},
                            //         ),
                            //       ),
                            //     );
                            //   } finally {
                            //     _scaffoldKey.currentState.showSnackBar(
                            //       SnackBar(
                            //         elevation: 4.0,
                            //         //behavior: SnackBarBehavior.floating,
                            //         content: Text("Please back to login"),
                            //         duration: new Duration(seconds: 5),
                            //         shape: RoundedRectangleBorder(
                            //           borderRadius: BorderRadius.only(
                            //               topLeft: Radius.circular(10.0),
                            //               topRight: Radius.circular(10.0),
                            //             bottomRight: Radius.circular(10.0),
                            //             bottomLeft: Radius.circular(10.0),
                            //           ),
                            //         ),
                            //         behavior: SnackBarBehavior.floating,
                            //
                            //         backgroundColor: Color(0xff304ffe),
                            //         action: SnackBarAction(
                            //           textColor: Color(0xffe6e6e6),
                            //           label: 'OK',
                            //           onPressed: () {
                            //             Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                            //
                            //           },
                            //         ),
                            //       ),
                            //     );
                            //
                            //   }
                            // }
                          },
                        ),
                      ],
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
const String _svg_bkxi98 =
    '<svg viewBox="128.7 46.8 40.7 91.5" ><path transform="translate(-675.57, -270.63)" d="M 832.0186767578125 388.7263488769531 C 828.4501953125 395.6903076171875 823.9239501953125 402.42529296875 818.197021484375 408.5211181640625 C 818.06982421875 408.6588134765625 817.9413452148438 408.7929077148438 817.811767578125 408.929443359375 L 804.2430419921875 402.505859375 C 804.3260498046875 402.367919921875 804.4171142578125 402.2131652832031 804.514892578125 402.0438842773438 C 810.3435668945313 392.0712890625 845.5279541015625 331.2377319335938 844.4161376953125 317.4596557617188 C 844.5455932617188 318.5958862304688 848.71630859375 356.1759033203125 832.0186767578125 388.7263488769531 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h5h6l1 =
    '<svg viewBox="134.5 98.0 42.7 41.4" ><path transform="translate(-699.36, -480.14)" d="M 844.6015625 619.2758178710938 C 844.41162109375 619.3837890625 844.2169189453125 619.489501953125 844.0209350585938 619.5916137695313 L 833.8419189453125 614.7728271484375 C 833.9842529296875 614.6717529296875 834.1500244140625 614.5524291992188 834.340576171875 614.4181518554688 C 837.4590454101563 612.17919921875 846.7320556640625 605.4614868164063 855.8056640625 598.2418212890625 C 865.5565185546875 590.4833984375 875.0789184570313 582.1472778320313 876.4931030273438 578.168212890625 C 876.20654296875 579.0804443359375 867.2799682617188 606.816650390625 844.6015625 619.2758178710938 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t4urux =
    '<svg viewBox="15.3 120.7 16.8 13.2" ><path transform="translate(-211.7, -572.79)" d="M 241.7086791992188 693.447998046875 L 229.1236877441406 693.447998046875 C 227.9658050537109 693.4493408203125 227.0274963378906 694.3875732421875 227.0261840820313 695.5455322265625 L 227.0261840820313 704.5347290039063 C 227.0274353027344 705.692626953125 227.9657745361328 706.6309814453125 229.1236877441406 706.63232421875 L 241.7086334228516 706.63232421875 C 242.8665161132813 706.6309814453125 243.8048400878906 705.6927490234375 243.8061218261719 704.5347900390625 L 243.8061218261719 695.5455932617188 C 243.8048553466797 694.3876953125 242.8665618896484 693.4493408203125 241.7086791992188 693.447998046875 Z M 241.7086791992188 694.6466064453125 C 241.7838134765625 694.6468505859375 241.8586120605469 694.6566162109375 241.9313049316406 694.6756591796875 L 235.4176635742188 699.87158203125 L 228.9421234130859 694.6650390625 C 229.0018768310547 694.6527709960938 229.0627288818359 694.6466064453125 229.1237487792969 694.6466064453125 L 241.7086791992188 694.6466064453125 Z M 241.7086791992188 705.4336547851563 L 229.1236877441406 705.4336547851563 C 228.62744140625 705.43310546875 228.2253265380859 705.0309448242188 228.2247619628906 704.5347290039063 L 228.2247619628906 695.626220703125 L 235.0406646728516 701.1064453125 C 235.2593078613281 701.2822265625 235.5705871582031 701.2828369140625 235.7898864746094 701.10791015625 L 242.6075744628906 695.6693115234375 L 242.6075744628906 704.5347290039063 C 242.6070404052734 705.0309448242188 242.2049255371094 705.43310546875 241.7086791992188 705.4337158203125 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6mcqqf =
    '<svg viewBox="50.6 73.4 16.3 14.8" ><path transform="translate(-206.94, -300.53)" d="M 273.7845764160156 387.962890625 L 260.9488220214844 388.7882080078125 L 257.5060119628906 376.601806640625 L 268.7877807617188 373.9580078125 L 273.7845764160156 387.962890625 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bn1edt =
    '<svg viewBox="64.5 98.0 25.8 9.7" ><path transform="translate(-412.92, -479.98)" d="M 497.2689208984375 583.373291015625 L 500.7838134765625 583.4022216796875 C 501.503662109375 583.4081420898438 502.1896362304688 583.0965576171875 502.6587524414063 582.550537109375 C 503.1279296875 582.0045166015625 503.3326416015625 581.279541015625 503.2183837890625 580.5687255859375 L 503.2183837890625 580.5687255859375 C 503.0951538085938 579.8023071289063 502.6153564453125 579.139892578125 501.9255981445313 578.7838134765625 C 501.2357788085938 578.4277954101563 500.4179077148438 578.42041015625 499.7217407226563 578.763916015625 L 496.4071044921875 580.3994140625 L 485.0698852539063 582.927734375 L 480.2127685546875 577.9619750976563 L 477.4228515625 582.5570068359375 L 483.9769897460938 587.6207885742188 L 497.2689208984375 583.373291015625 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xrvc7w =
    '<svg viewBox="58.8 108.1 24.8 32.4" ><path transform="translate(-389.76, -521.42)" d="M 473.447021484375 661.129150390625 L 469.3058471679688 661.925537109375 C 466.4771728515625 653.009033203125 463.4124450683594 644.5650634765625 463.4126586914063 638.0343017578125 C 459.4095153808594 642.4896240234375 454.4454956054688 645.038330078125 448.6000366210938 645.8389282226563 L 449.2371215820313 635.9638671875 L 454.015380859375 633.4154052734375 L 461.3284606933594 630.0401611328125 C 461.96875 629.74462890625 462.6594848632813 629.5737915039063 463.3637084960938 629.5367431640625 L 463.3637084960938 629.5367431640625 C 466.1991577148438 629.387451171875 468.6904296875 631.4012451171875 469.1390380859375 634.2049560546875 L 473.447021484375 661.129150390625 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mrn0iw =
    '<svg viewBox="76.1 135.7 13.3 7.2" ><path transform="translate(-460.28, -634.44)" d="M 543.33154296875 770.1666259765625 C 543.33154296875 770.1666259765625 543.7286376953125 769.9984130859375 545.314453125 772.073486328125 C 545.314453125 772.073486328125 550.378662109375 773.0166015625 549.5411376953125 775.3001708984375 C 548.70361328125 777.5836181640625 542.192138671875 777.5119018554688 541.5733642578125 777.1629638671875 C 540.9545288085938 776.8140869140625 536.029541015625 776.8212890625 536.3699340820313 775.269775390625 C 536.7103271484375 773.7183227539063 538.6722412109375 771.9842529296875 538.6722412109375 771.9842529296875 C 538.6722412109375 771.9842529296875 539.57421875 773.81201171875 540.976318359375 773.8196411132813 C 542.8536987304688 773.8299560546875 543.4907836914063 772.2371826171875 543.1722412109375 770.6444091796875 C 543.1693725585938 770.629638671875 543.34375 770.17626953125 543.33154296875 770.1666259765625 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jx1a78 =
    '<svg viewBox="43.1 122.1 8.2 14.7" ><path transform="translate(-325.48, -578.7)" d="M 376.6649780273438 708.997802734375 C 376.6649780273438 708.997802734375 377.285400390625 710.69384765625 374.4920043945313 711.7156982421875 C 374.4920043945313 711.7156982421875 371.7520141601563 716.9033203125 369.5523681640625 715.219482421875 C 367.3527526855469 713.5355834960938 369.6353759765625 706.4791870117188 370.2242431640625 705.9244384765625 C 370.8131103515625 705.3697509765625 372.4727172851563 700.01171875 374.0445861816406 700.9072265625 C 375.6164245605469 701.802734375 376.8378295898438 704.5230712890625 376.8378295898438 704.5230712890625 C 376.8378295898438 704.5230712890625 371.7766418457031 706.1483764648438 374.1708374023438 709.9102783203125 C 374.1709594726563 709.9103393554688 375.21484375 709.9808349609375 376.6649780273438 708.997802734375 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_isq9ni =
    '<svg viewBox="50.5 81.7 11.3 12.3" ><path transform="translate(-355.54, -413.15)" d="M 417.0054931640625 507.06396484375 L 407.9266967773438 507.06396484375 L 406.015380859375 501.4893188476563 C 409.3289184570313 500.4779052734375 408.554931640625 497.6056518554688 407.9266967773438 494.7997436523438 L 417.0054931640625 494.7997436523438 C 415.2454223632813 498.3101196289063 413.0588684082031 503.2781982421875 417.3240356445313 504.1969604492188 L 417.0054931640625 507.06396484375 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rwslce =
    '<svg viewBox="42.5 111.0 24.0 17.0" ><path transform="translate(-323.02, -533.41)" d="M 386.8730773925781 656.6387939453125 L 385.2225341796875 657.8931884765625 C 383.7784118652344 658.99072265625 381.8607788085938 659.24072265625 380.1834716796875 658.550048828125 L 380.1834716796875 658.550048828125 C 375.4560241699219 655.0065307617188 371.6003723144531 656.0684814453125 368.556396484375 661.4170532226563 C 364.9052429199219 657.29638671875 364.50146484375 651.3282470703125 367.760009765625 645.1709594726563 L 385.8377990722656 645.5691528320313 L 389.5010986328125 644.4542236328125 L 386.8730773925781 656.6387939453125 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5tvrwi =
    '<svg viewBox="45.8 121.4 15.3 20.5" ><path transform="translate(-336.22, -575.91)" d="M 394.0596618652344 717.5907592773438 L 394.0596618652344 717.5907592773438 C 391.921630859375 718.2486572265625 389.6195678710938 717.2786865234375 388.596923828125 715.2891845703125 C 386.9723205566406 713.8582763671875 385.6015625 711.8095092773438 384.41259765625 709.318115234375 C 383.5595703125 707.4905395507813 382.8270874023438 705.609130859375 382.2198791503906 703.685791015625 C 381.3971557617188 701.1448974609375 382.7727661132813 698.3690185546875 385.3331298828125 697.6087646484375 C 385.4092407226563 697.586181640625 385.486328125 697.5648803710938 385.5643310546875 697.544921875 C 388.9822387695313 696.6673583984375 392.4921875 698.6387329101563 393.6605224609375 701.968505859375 L 397.0577697753906 711.6507568359375 C 397.4734191894531 712.8353271484375 397.3886413574219 714.1380615234375 396.8229675292969 715.2588500976563 C 396.25732421875 716.3795776367188 395.2595520019531 717.2215576171875 394.0596618652344 717.5907592773438 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tqdape =
    '<svg viewBox="47.6 132.3 4.8 7.0" ><path transform="translate(-343.8, -620.44)" d="M 391.4150085449219 752.7410888671875 C 391.4150085449219 752.7410888671875 395.3969116210938 757.2008056640625 396.1932983398438 759.7491455078125" fill="#000000" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cvtz0u =
    '<svg viewBox="30.7 93.1 12.9 24.7" ><path transform="translate(-274.4, -460.13)" d="M 306.566650390625 571.3865966796875 L 305.2339782714844 574.63916015625 C 304.9610290527344 575.3053588867188 304.9954833984375 576.0579223632813 305.328125 576.6963500976563 C 305.6607666015625 577.3348388671875 306.2578735351563 577.794189453125 306.960205078125 577.9522094726563 L 306.960205078125 577.9522094726563 C 307.7175598144531 578.12255859375 308.5108032226563 577.9232177734375 309.09765625 577.4150390625 C 309.6845092773438 576.9069213867188 309.9952392578125 576.1502685546875 309.9349060058594 575.3764038085938 L 309.6477661132813 571.6912841796875 L 311.5123291015625 560.2261962890625 L 317.9272155761719 557.5616455078125 L 314.6975708007813 553.2642822265625 L 307.561279296875 557.4680786132813 L 306.566650390625 571.3865966796875 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_moks2v =
    '<svg viewBox="38.2 87.4 26.3 29.7" ><path transform="translate(-305.34, -436.61)" d="M 369.3605651855469 548.3695678710938 C 364.7842102050781 556.0565185546875 357.42431640625 554.7074584960938 349.6103515625 548.6881103515625 C 352.90576171875 546.2241821289063 350.8845520019531 539.1315307617188 348.0176086425781 538.6537475585938 C 345.0530395507813 538.1596069335938 344.6964721679688 532.0968017578125 343.5578918457031 529.09716796875 L 357.4148559570313 524.0003662109375 L 361.1578369140625 526.9469604492188 L 364.9008178710938 526.0709228515625 L 366.4353637695313 526.615478515625 C 368.4806823730469 527.3412475585938 369.8580932617188 529.2634887695313 369.8878173828125 531.43359375 C 366.7432861328125 535.9765625 364.4154052734375 540.8228149414063 369.3605651855469 548.3695678710938 Z" fill="#f44336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g63al7 =
    '<svg viewBox="60.3 90.4 9.3 15.1" ><path transform="translate(-395.63, -449.0)" d="M 461.3948974609375 554.5433959960938 C 461.3948974609375 554.5433959960938 460.6896362304688 550.9067993164063 458.3743896484375 552.0481567382813 C 456.0591735839844 553.1895141601563 455.89990234375 550.0040283203125 455.89990234375 550.0040283203125 L 457.7315673828125 539.4122314453125 L 465.217529296875 547.3759765625 L 461.3948974609375 554.5433959960938 Z" fill="#f44336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dapi3l =
    '<svg viewBox="46.7 71.8 20.4 17.0" ><path transform="translate(-340.15, -372.62)" d="M 401.9927062988281 446.0026245117188 C 401.9927062988281 446.0026245117188 404.6359252929688 446.9938049316406 404.6729125976563 450.5126342773438 C 404.67138671875 451.1047058105469 404.5871276855469 451.6936645507813 404.4225769042969 452.2623901367188 C 404.2449340820313 452.907470703125 404.0945434570313 454.3092041015625 405.2342834472656 456.1896362304688 C 405.9791259765625 457.4102172851563 406.6510620117188 458.6737670898438 407.2466430664063 459.9737548828125 L 407.2466430664063 459.9737548828125 L 404.2582397460938 460.2354125976563 L 403.8082885742188 455.2813110351563 C 403.5901794433594 452.8794555664063 403.0195922851563 450.5227661132813 402.1148986816406 448.287109375 L 402.0960083007813 448.240478515625 C 402.0960083007813 448.240478515625 400.7051391601563 450.6091613769531 398.102294921875 450.5127868652344 L 399.0662841796875 449.61767578125 C 399.0662841796875 449.61767578125 395.7945556640625 450.8167724609375 394.019287109375 451.047607421875 C 393.6063842773438 451.1013793945313 393.2571411132813 451.3792114257813 393.1118774414063 451.7694702148438 C 392.9666137695313 452.1597290039063 393.0491943359375 452.5982666015625 393.3264770507813 452.908935546875 C 393.3367919921875 452.92041015625 393.3472900390625 452.9319458007813 393.3580322265625 452.9434814453125 C 394.4322509765625 454.1002807617188 396.5668334960938 456.7857055664063 395.189697265625 458.7825927734375 C 393.8126220703125 460.7794799804688 394.9074096679688 461.3784790039063 394.9074096679688 461.3784790039063 L 392.9037170410156 460.1873779296875 L 391.9948120117188 459.59521484375 L 391.96728515625 460.3388671875 L 387.1541137695313 459.6021728515625 C 387.1541137695313 459.6021728515625 385.859619140625 459.3680419921875 388.765380859375 456.3107299804688 C 388.765380859375 456.3107299804688 389.5472412109375 455.1106567382813 389.2642517089844 454.0401611328125 C 389.029296875 453.225830078125 388.9914245605469 452.3673706054688 389.1537475585938 451.5355224609375 C 389.9074401855469 448.0732421875 392.6152954101563 441.2347717285156 401.9927062988281 446.0026245117188 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k9ppqf =
    '<svg viewBox="85.7 0.0 71.3 142.9" ><path transform="translate(-499.65, -78.97)" d="M 656.5979614257813 112.9287185668945 L 655.8125 112.9287185668945 L 655.8125 91.41831970214844 C 655.8125 84.54274749755859 650.23876953125 78.96900177001953 643.3631591796875 78.96900177001953 L 597.790283203125 78.96900177001953 C 590.9146728515625 78.96900177001953 585.3409423828125 84.54275512695313 585.3409423828125 91.41831970214844 L 585.3409423828125 209.4263916015625 C 585.3409423828125 216.3019714355469 590.9146728515625 221.8757019042969 597.790283203125 221.8757019042969 L 643.363037109375 221.8757019042969 C 650.238525390625 221.8757019042969 655.8123168945313 216.3019409179688 655.8123168945313 209.4263916015625 L 655.8123168945313 128.2402038574219 L 656.5977783203125 128.2402038574219 L 656.5979614257813 112.9287185668945 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ongghw =
    '<svg viewBox="89.1 3.2 64.4 136.4" ><path transform="translate(-513.7, -92.22)" d="M 657.9194946289063 95.46158599853516 L 651.970703125 95.46158599853516 C 652.5265502929688 96.82368469238281 652.3677978515625 98.37311553955078 651.5472412109375 99.59416961669922 C 650.7266845703125 100.8152160644531 649.35205078125 101.5476226806641 647.8809204101563 101.547607421875 L 621.77294921875 101.547607421875 C 620.3023071289063 101.547607421875 618.9278564453125 100.8153762817383 618.1072998046875 99.59457397460938 C 617.28662109375 98.37338256835938 617.1277465820313 96.82418823242188 617.683349609375 95.46217346191406 L 612.126220703125 95.46217346191406 C 606.991455078125 95.46217346191406 602.8289184570313 99.62473297119141 602.8289184570313 104.7594985961914 L 602.8289794921875 222.5938110351563 C 602.8289184570313 227.7285461425781 606.991455078125 231.89111328125 612.126220703125 231.89111328125 L 657.917724609375 231.89111328125 C 663.052490234375 231.89111328125 667.215087890625 227.7285461425781 667.215087890625 222.5938110351563 L 667.215087890625 222.5937805175781 L 667.215087890625 222.5937805175781 L 667.215087890625 104.7588958740234 C 667.215087890625 99.62413024902344 663.052490234375 95.46157836914063 657.917724609375 95.46157836914063 L 657.9194946289063 95.46157836914063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_wlho4h =
    '<svg viewBox="99.8 80.8 43.0 2.0" ><path transform="translate(-557.44, -409.5)" d="M 658.1237182617188 490.2669677734375 C 657.64111328125 490.2669677734375 657.2484130859375 490.7152099609375 657.2484130859375 491.2660522460938 C 657.2484130859375 491.81689453125 657.64111328125 492.26513671875 658.1237182617188 492.26513671875 L 699.387451171875 492.26513671875 C 699.8700561523438 492.26513671875 700.2628173828125 491.81689453125 700.2628173828125 491.2660522460938 C 700.2628173828125 490.7152099609375 699.8700561523438 490.2669677734375 699.387451171875 490.2669677734375 L 658.1237182617188 490.2669677734375 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_oedibo =
    '<svg viewBox="99.8 104.3 43.0 2.0" ><path transform="translate(-557.44, -505.94)" d="M 658.1237182617188 610.2670288085938 C 657.64111328125 610.2670288085938 657.2484130859375 610.71533203125 657.2484130859375 611.26611328125 C 657.2484130859375 611.81689453125 657.64111328125 612.26513671875 658.1237182617188 612.26513671875 L 699.387451171875 612.26513671875 C 699.8700561523438 612.26513671875 700.2628173828125 611.81689453125 700.2628173828125 611.26611328125 C 700.2628173828125 610.71533203125 699.8700561523438 610.2670288085938 699.387451171875 610.2670288085938 L 658.1237182617188 610.2670288085938 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fffjay =
    '<svg viewBox="99.8 86.8 19.5 2.0" ><path transform="translate(-557.44, -434.04)" d="M 658.1237182617188 520.7940063476563 C 657.64111328125 520.7940063476563 657.2484130859375 521.2422485351563 657.2484130859375 521.7930908203125 C 657.2484130859375 522.3439331054688 657.64111328125 522.7921142578125 658.1237182617188 522.7921142578125 L 675.879638671875 522.7921142578125 C 676.3623046875 522.7921142578125 676.7550048828125 522.3439331054688 676.7550048828125 521.7930908203125 C 676.7550048828125 521.2422485351563 676.3623046875 520.7940063476563 675.879638671875 520.7940063476563 L 658.1237182617188 520.7940063476563 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f6pcx2 =
    '<svg viewBox="99.8 92.5 43.0 2.0" ><path transform="translate(-557.44, -457.42)" d="M 658.1237182617188 549.8930053710938 C 657.64111328125 549.8930053710938 657.2484130859375 550.3412475585938 657.2484130859375 550.89208984375 C 657.2484130859375 551.44287109375 657.64111328125 551.89111328125 658.1237182617188 551.89111328125 L 699.387451171875 551.89111328125 C 699.8700561523438 551.89111328125 700.2628173828125 551.44287109375 700.2628173828125 550.89208984375 C 700.2628173828125 550.3412475585938 699.8700561523438 549.8930053710938 699.387451171875 549.8930053710938 L 658.1237182617188 549.8930053710938 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_g269m6 =
    '<svg viewBox="99.8 98.5 19.5 2.0" ><path transform="translate(-557.44, -481.95)" d="M 658.1237182617188 580.4199829101563 C 657.64111328125 580.4199829101563 657.2484130859375 580.8681640625 657.2484130859375 581.4190673828125 C 657.2484130859375 581.9698486328125 657.64111328125 582.4180908203125 658.1237182617188 582.4180908203125 L 675.879638671875 582.4180908203125 C 676.3623046875 582.4180908203125 676.7550048828125 581.9698486328125 676.7550048828125 581.4190673828125 C 676.7550048828125 580.8681640625 676.3623046875 580.4199829101563 675.879638671875 580.4199829101563 L 658.1237182617188 580.4199829101563 Z" fill="#e6e6e6" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_og1nyf =
    '<svg viewBox="107.4 35.3 27.8 28.9" ><path transform="translate(-588.52, -223.32)" d="M 696.9967041015625 258.5960083007813 L 722.683349609375 258.5960083007813 C 723.274169921875 258.5966796875 723.7529296875 259.075439453125 723.753662109375 259.666259765625 L 723.7536010742188 286.4178161621094 C 723.7529296875 287.0086364746094 723.274169921875 287.4874267578125 722.683349609375 287.4880981445313 L 696.9967041015625 287.4880981445313 C 696.4058837890625 287.4874267578125 695.9271240234375 287.0086364746094 695.9263916015625 286.4178161621094 L 695.9263916015625 259.6661376953125 C 695.9271850585938 259.0753784179688 696.4059448242188 258.5966491699219 696.9967041015625 258.5959777832031 Z" fill="#f44336" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x335t6 =
    '<svg viewBox="113.2 57.2 16.2 1.5" ><path transform="translate(-612.33, -313.04)" d="M 741.017333984375 371.6913757324219 C 741.4185791015625 371.6913757324219 741.743896484375 371.3660888671875 741.743896484375 370.9647827148438 C 741.743896484375 370.5634765625 741.4185791015625 370.2381591796875 741.017333984375 370.2381591796875 L 726.2772216796875 370.2381591796875 C 725.8759765625 370.2381591796875 725.5506591796875 370.5634765625 725.5506591796875 370.9647827148438 C 725.5506591796875 371.3660888671875 725.8759765625 371.6913757324219 726.2772216796875 371.6913757324219 L 741.017333984375 371.6913757324219 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9hiedi =
    '<svg viewBox="113.2 52.9 16.2 1.5" ><path transform="translate(-612.33, -295.52)" d="M 741.017333984375 349.889404296875 C 741.4185791015625 349.889404296875 741.743896484375 349.5640869140625 741.743896484375 349.1627807617188 C 741.743896484375 348.761474609375 741.4185791015625 348.4361572265625 741.017333984375 348.4361572265625 L 726.2772216796875 348.4361572265625 C 725.8759765625 348.4361572265625 725.5506591796875 348.761474609375 725.5506591796875 349.1627807617188 C 725.5506591796875 349.5640869140625 725.8759765625 349.889404296875 726.2772216796875 349.889404296875 L 741.017333984375 349.889404296875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_32c8hs =
    '<svg viewBox="116.7 40.8 9.1 9.1" ><path transform="translate(-626.75, -245.9)" d="M 748.0642700195313 286.6900024414063 C 750.59033203125 286.6900024414063 752.6380615234375 288.7377319335938 752.6380615234375 291.2637329101563 C 752.6380615234375 293.7897644042969 750.59033203125 295.8374938964844 748.0642700195313 295.8374938964844 C 745.538330078125 295.8374938964844 743.4905395507813 293.7897644042969 743.4905395507813 291.2637329101563 C 743.493408203125 288.7389221191406 745.5394287109375 286.69287109375 748.0643310546875 286.6900024414063 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bhigzo =
    '<svg viewBox="1383.0 484.0 160.5 45.0" ><path transform="translate(1383.0, 484.0)" d="M 9.828011512756348 0 L 150.6718597412109 0 C 156.0997314453125 0 160.4998626708984 4.448381900787354 160.4998626708984 9.935739517211914 L 160.4998626708984 35.06426620483398 C 160.4998626708984 40.55162048339844 156.0997314453125 45 150.6718597412109 45 L 9.828011512756348 45 C 4.400150299072266 45 0 40.55162048339844 0 35.06426620483398 L 0 9.935739517211914 C 0 4.448381900787354 4.400150299072266 0 9.828011512756348 0 Z" fill="#ffebee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_tbsq74 =
    '<svg viewBox="94.1 3.0 28.8 21.6" ><path transform="translate(94.06, -60.96)" d="M 28.82198715209961 71.63624572753906 C 28.82198715209961 72.96617126464844 27.65953826904297 74.10334014892578 26.30006408691406 74.10334014892578 L 20.67915725708008 74.10334014892578 C 21.59898376464844 75.06302642822266 21.71190643310547 76.90481567382813 20.32456588745117 78.09699249267578 C 21.12887954711914 79.38210296630859 20.44542694091797 81.08146667480469 19.3985481262207 81.60488128662109 C 19.90372085571289 84.37117767333984 18.16314315795898 85.61648559570313 15.31168174743652 85.61648559570313 C 15.15710067749023 85.61648559570313 14.56433582305908 85.60505676269531 14.4109935760498 85.60551452636719 C 10.92246341705322 85.61496734619141 10.08240413665771 83.85677337646484 7.44581127166748 83.44864654541016 C 6.788703918457031 83.346923828125 6.304810047149658 82.77926635742188 6.304810047149658 82.11427307128906 L 6.304810047149658 72.45863342285156 L 6.304922103881836 72.45857238769531 C 6.305541515350342 71.42470550537109 6.902021884918213 70.43827819824219 7.907244682312012 69.99040985107422 C 9.533323287963867 69.25894165039063 13.27832317352295 67.22991180419922 13.96065044403076 65.63766479492188 C 14.39956665039063 64.61346435546875 15.16441822052002 64.00044250488281 16.21236801147461 63.99999237060547 C 18.13882446289063 63.99920654296875 19.46339988708496 65.97576904296875 18.69595718383789 67.76644134521484 C 18.49425888061523 68.23699951171875 18.22804832458496 68.70484924316406 17.89924240112305 69.16915893554688 L 26.30006408691406 69.16915893554688 C 27.6201343536377 69.16915893554688 28.82198715209961 70.32558441162109 28.82198715209961 71.63624572753906 Z M 5.404122829437256 71.65583801269531 L 5.404122829437256 82.46408843994141 C 5.404122829437256 83.21024322509766 4.799254894256592 83.81511688232422 4.053092002868652 83.81511688232422 L 1.351030707359314 83.81511688232422 C 0.604867696762085 83.81511688232422 0 83.21024322509766 0 82.46408843994141 L 0 71.65583801269531 C 0 70.90967559814453 0.604867696762085 70.3048095703125 1.351030707359314 70.3048095703125 L 4.053092002868652 70.3048095703125 C 4.799254894256592 70.3048095703125 5.404122829437256 70.90967559814453 5.404122829437256 71.65583801269531 Z M 3.827920436859131 81.11305236816406 C 3.827920436859131 80.49124145507813 3.323873281478882 79.98719024658203 2.702061414718628 79.98719024658203 C 2.080249547958374 79.98719024658203 1.576202511787415 80.49124145507813 1.576202511787415 81.11305236816406 C 1.576202511787415 81.73486328125 2.080249547958374 82.23890686035156 2.702061414718628 82.23890686035156 C 3.323873281478882 82.23890686035156 3.827920436859131 81.73486328125 3.827920436859131 81.11305236816406 Z" fill="#f44336" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
