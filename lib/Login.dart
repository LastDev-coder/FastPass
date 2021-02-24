import 'package:adobe_xd/pinned.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:password_manager_project/Forgot_Password.dart';
import 'package:password_manager_project/SignUp.dart';
import 'package:flutter_statusbar_text_color/flutter_statusbar_text_color.dart';
import 'home.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  final formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var email;
  var password;

  Future<void> _logIn() async {
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
            .signInWithEmailAndPassword(email: email, password: password);
        final snackBar2 = _scaffoldKey.currentState.showSnackBar(
          SnackBar(
            elevation: 4.0,
            content: Text('Successfully Login...'),
            duration: new Duration(seconds: 2),
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => home()),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          final snackBar = _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              elevation: 4.0,
              content: Text('No user found for this email.'),
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
        } else if (e.code == 'wrong-password') {
          final snackBar = _scaffoldKey.currentState.showSnackBar(
            SnackBar(
              elevation: 4.0,
              content: Text('Wrong password provided for this user.'),
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
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);
// FlutterStatusbarTextColor.setTextColor();
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xffffffff),

      body: Form(

        key: formkey,
        child: Stack(
          children: <Widget>[
            Pinned.fromSize(
              bounds: Rect.fromLTWH(75.0, 794.2, 264.3, 25.8),
              size: Size(412.0, 847.0),
              pinBottom: true,
              fixedWidth: true,
              fixedHeight: true,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 2.8, 181.0, 20.0),
                    size: Size(412.0, 847.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Don\'t have any account ?',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(186.0, 0.0, 78.3, 25.8),
                    size: Size(264.3, 25.8),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_rf64j,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  GestureDetector(
                      child: Pinned.fromSize(
                        bounds: Rect.fromLTWH(195.0, 2.8, 60.0, 20.0),
                        size: Size(264.3, 25.8),
                        pinRight: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: const Color(0xfff44336),
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      }),
                ],
              ),
            ),
            Pinned.fromSize(
              bounds: Rect.fromLTWH(31.0, 50.0, 350.0, 600.0),
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
                    bounds: Rect.fromLTWH(37.0, 280.0, 277.0, 70.0),
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
                                width: 2, color: const Color(0xff304ffe)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: const Color(0xff304ffe)),
                          hintText: 'example@gmai.com',
                        ),
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },

                        validator: (String value) {
                          if (EmailValidator.validate(value)) {
                            email = value;
                          } else {
                            return "Please enter a valid email";
                          }
                        },
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(37.0, 370.0, 277.0, 70.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Container(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(
                                width: 2, color: const Color(0xff304ffe)),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: const Color(0xff304ffe)),
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
                            password = value;
                          }
                        },
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(44.0, 76.0, 270.0, 44.0),
                    size: Size(350.0, 600.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Text(
                      'Please login in your personal  account.',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
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
                      'Sign In',
                      style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(172.0, 540.0, 163.3, 48.0),
                    size: Size(350.0, 600.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 163.3, 48.0),
                          size: Size(163.3, 48.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_evkhdp,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        GestureDetector(
                          child: Pinned.fromSize(
                            bounds: Rect.fromLTWH(18.0, 9.0, 126.3, 30.0),
                            size: Size(163.3, 48.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(97.5, 3.7, 28.8, 21.6),
                                  size: Size(126.3, 30.0),
                                  pinRight: true,
                                  pinTop: true,
                                  pinBottom: true,
                                  fixedWidth: true,
                                  child:
                                      // Adobe XD layer: 'FontAwsome (hand-po…' (shape)
                                      SvgPicture.string(
                                    _svg_iihzuz,
                                    allowDrawingOutsideViewBox: true,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Pinned.fromSize(
                                  bounds: Rect.fromLTWH(0.0, 0.0, 88.0, 30.0),
                                  size: Size(126.3, 30.0),
                                  pinLeft: true,
                                  pinRight: true,
                                  fixedHeight: true,
                                  child: Text(
                                    'SIGN IN',
                                    style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 22,
                                      color: const Color(0xff304ffe),
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onTap: () {
                            _logIn();
                          },
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      child: Pinned.fromSize(
                        bounds: Rect.fromLTWH(37.0, 450.0, 142.0, 20.0),
                        size: Size(350.0, 600.0),
                        pinLeft: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            color: const Color(0xffaa00ff),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Forgot_Password()),
                        );
                      }),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(76.0, 132.0, 198.0, 118.4),
                    size: Size(350.0, 600.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(147.9, 79.1, 50.1, 39.2),
                          size: Size(198.0, 118.4),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_3hd9o6,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(162.7, 80.9, 27.5, 36.6),
                          size: Size(198.0, 118.4),
                          pinRight: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_shxfyk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 64.4, 68.9, 53.9),
                          size: Size(198.0, 118.4),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_f2to7l,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(10.7, 66.8, 37.8, 50.3),
                          size: Size(198.0, 118.4),
                          pinLeft: true,
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5ldkoy,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(59.1, 0.0, 83.1, 118.1),
                          size: Size(198.0, 118.4),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_suwv59,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(59.1, 0.0, 65.8, 118.1),
                          size: Size(198.0, 118.4),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_6uj6zo,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(115.8, 72.7, 7.3, 7.3),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xff304ffe),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(131.2, 104.8, 4.1, 10.8),
                          size: Size(198.0, 118.4),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_jy1372,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(127.2, 114.8, 8.8, 3.4),
                          size: Size(198.0, 118.4),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_9mkvh0,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(145.1, 104.8, 4.1, 10.8),
                          size: Size(198.0, 118.4),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_fxjkkr,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(141.0, 114.8, 8.8, 3.4),
                          size: Size(198.0, 118.4),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_k9k1e9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(120.9, 47.3, 15.6, 30.8),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_n8h438,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(144.2, 50.6, 7.3, 31.7),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_6ksl0z,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(133.7, 31.3, 11.2, 11.2),
                          size: Size(198.0, 118.4),
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
                          bounds: Rect.fromLTWH(130.9, 44.5, 18.6, 31.2),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5k0ham,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(126.5, 46.4, 9.8, 12.4),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_l3k011,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(143.3, 47.0, 8.1, 14.6),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_5w1isk,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(130.0, 74.4, 19.8, 37.8),
                          size: Size(198.0, 118.4),
                          pinBottom: true,
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_czxlgd,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(132.6, 28.7, 13.1, 13.1),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_o7xdk0,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(22.9, 117.7, 168.6, 1.0),
                          size: Size(198.0, 118.4),
                          pinLeft: true,
                          pinRight: true,
                          pinBottom: true,
                          fixedHeight: true,
                          child: SvgPicture.string(
                            _svg_mof04k,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(75.7, 24.5, 32.5, 69.0),
                          size: Size(198.0, 118.4),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: SvgPicture.string(
                            _svg_h03ro8,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(75.7, 45.8, 32.5, 0.5),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffcccccc),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(75.8, 71.8, 32.5, 0.5),
                          size: Size(198.0, 118.4),
                          fixedWidth: true,
                          fixedHeight: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffcccccc),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(85.9, 24.5, 0.5, 69.2),
                          size: Size(198.0, 118.4),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffcccccc),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(97.3, 24.5, 0.5, 69.2),
                          size: Size(198.0, 118.4),
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffcccccc),
                            ),
                          ),
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

const String _svg_iihzuz =
    '<svg viewBox="93.1 4.0 28.8 21.6" ><path transform="translate(93.06, -59.96)" d="M 28.82198715209961 71.63624572753906 C 28.82198715209961 72.96617126464844 27.65953826904297 74.10334014892578 26.30006408691406 74.10334014892578 L 20.67915725708008 74.10334014892578 C 21.59898376464844 75.06302642822266 21.71190643310547 76.90481567382813 20.32456588745117 78.09699249267578 C 21.12887954711914 79.38210296630859 20.44542694091797 81.08146667480469 19.3985481262207 81.60488128662109 C 19.90372085571289 84.37117767333984 18.16314315795898 85.61648559570313 15.31168174743652 85.61648559570313 C 15.15710067749023 85.61648559570313 14.56433582305908 85.60505676269531 14.4109935760498 85.60551452636719 C 10.92246341705322 85.61496734619141 10.08240413665771 83.85677337646484 7.44581127166748 83.44864654541016 C 6.788703918457031 83.346923828125 6.304810047149658 82.77926635742188 6.304810047149658 82.11427307128906 L 6.304810047149658 72.45863342285156 L 6.304922103881836 72.45857238769531 C 6.305541515350342 71.42470550537109 6.902021884918213 70.43827819824219 7.907244682312012 69.99040985107422 C 9.533323287963867 69.25894165039063 13.27832317352295 67.22991180419922 13.96065044403076 65.63766479492188 C 14.39956665039063 64.61346435546875 15.16441822052002 64.00044250488281 16.21236801147461 63.99999237060547 C 18.13882446289063 63.99920654296875 19.46339988708496 65.97576904296875 18.69595718383789 67.76644134521484 C 18.49425888061523 68.23699951171875 18.22804832458496 68.70484924316406 17.89924240112305 69.16915893554688 L 26.30006408691406 69.16915893554688 C 27.6201343536377 69.16915893554688 28.82198715209961 70.32558441162109 28.82198715209961 71.63624572753906 Z M 5.404122829437256 71.65583801269531 L 5.404122829437256 82.46408843994141 C 5.404122829437256 83.21024322509766 4.799254894256592 83.81511688232422 4.053092002868652 83.81511688232422 L 1.351030707359314 83.81511688232422 C 0.604867696762085 83.81511688232422 0 83.21024322509766 0 82.46408843994141 L 0 71.65583801269531 C 0 70.90967559814453 0.604867696762085 70.3048095703125 1.351030707359314 70.3048095703125 L 4.053092002868652 70.3048095703125 C 4.799254894256592 70.3048095703125 5.404122829437256 70.90967559814453 5.404122829437256 71.65583801269531 Z M 3.827920436859131 81.11305236816406 C 3.827920436859131 80.49124145507813 3.323873281478882 79.98719024658203 2.702061414718628 79.98719024658203 C 2.080249547958374 79.98719024658203 1.576202511787415 80.49124145507813 1.576202511787415 81.11305236816406 C 1.576202511787415 81.73486328125 2.080249547958374 82.23890686035156 2.702061414718628 82.23890686035156 C 3.323873281478882 82.23890686035156 3.827920436859131 81.73486328125 3.827920436859131 81.11305236816406 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
const String _svg_evkhdp =
    '<svg viewBox="1383.0 484.0 163.3 48.0" ><path transform="translate(1383.0, 484.0)" d="M 10 0 L 153.30859375 0 C 158.8314361572266 0 163.30859375 4.744940757751465 163.30859375 10.59812259674072 L 163.30859375 37.40187835693359 C 163.30859375 43.25505828857422 158.8314361572266 48 153.30859375 48 L 10 48 C 4.477152347564697 48 0 43.25505828857422 0 37.40187835693359 L 0 10.59812259674072 C 0 4.744940757751465 4.477152347564697 0 10 0 Z" fill="#f5f5f5" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3hd9o6 =
    '<svg viewBox="147.9 79.1 50.1 39.2" ><path transform="translate(-666.82, -458.53)" d="M 818.4158935546875 575.5712280273438 C 815.8809814453125 573.4292602539063 814.3411865234375 570.0455322265625 814.7449951171875 566.75146484375 C 815.1488037109375 563.4573364257813 817.6497802734375 560.4290771484375 820.89404296875 559.7296142578125 C 824.13818359375 559.0300903320313 827.8363037109375 560.9664306640625 828.8216552734375 564.135498046875 C 829.364013671875 558.025634765625 829.9888916015625 551.6597290039063 833.2373046875 546.4566650390625 C 836.1785888671875 541.745361328125 841.2730712890625 538.3742065429688 846.7943115234375 537.7711181640625 C 852.3155517578125 537.1680297851563 858.1287841796875 539.4458618164063 861.5721435546875 543.8037109375 C 865.0155029296875 548.1615600585938 865.858642578125 554.4969482421875 863.4468994140625 559.5001220703125 C 861.67041015625 563.185791015625 858.397216796875 565.9287109375 854.9678955078125 568.1602172851563 C 843.88623046875 575.3102416992188 830.5953369140625 578.2178955078125 817.5404052734375 576.34814453125 L 818.4158935546875 575.5712280273438 Z" fill="#f2f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_shxfyk =
    '<svg viewBox="162.7 80.9 27.5 36.6" ><path transform="translate(-717.25, -464.54)" d="M 906.544189453125 545.58349609375 C 901.9884033203125 549.294189453125 897.80908203125 553.4443359375 894.06640625 557.9738159179688 C 888.2093505859375 565.0382080078125 883.4696044921875 572.958740234375 880.0125732421875 581.4593505859375 C 879.759521484375 582.0795288085938 880.7664794921875 582.3494873046875 881.0167236328125 581.7362060546875 C 886.673095703125 567.9208984375 895.702880859375 555.744140625 907.2803955078125 546.3197021484375 C 907.80029296875 545.8963623046875 907.0595703125 545.16357421875 906.5440673828125 545.5833740234375 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_f2to7l =
    '<svg viewBox="0.0 64.4 68.9 53.9" ><path transform="translate(-165.0, -408.52)" d="M 228.7392730712891 524.976318359375 C 232.2210235595703 522.0343017578125 234.3358612060547 517.3867797851563 233.78125 512.8623046875 C 233.2266540527344 508.337890625 229.7914886474609 504.1785583496094 225.3355865478516 503.2178039550781 C 220.8796997070313 502.2569885253906 215.8003234863281 504.9165954589844 214.4469146728516 509.2693176269531 C 213.7020721435547 500.8774108886719 212.8437805175781 492.1339416503906 208.3820953369141 484.9874572753906 C 204.3421630859375 478.5165100097656 197.3449096679688 473.8862609863281 189.7614898681641 473.0579223632813 C 182.1780548095703 472.2295837402344 174.1936645507813 475.3581237792969 169.4641723632813 481.3436584472656 C 164.7346801757813 487.3291931152344 163.5766754150391 496.0308532714844 166.8890838623047 502.9026794433594 C 169.3292388916016 507.9649658203125 173.8248443603516 511.7323608398438 178.5351257324219 514.79736328125 C 193.5625457763672 524.57568359375 212.2040100097656 528.65380859375 229.9416198730469 526.0433959960938" fill="#f2f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5ldkoy =
    '<svg viewBox="10.7 66.8 37.8 50.3" ><path transform="translate(-201.35, -416.78)" d="M 213.3088989257813 483.7879028320313 C 219.566162109375 488.8845825195313 225.3065490722656 494.584716796875 230.447021484375 500.8060302734375 C 235.5883178710938 507.0209350585938 240.1146545410156 513.7198486328125 243.9624938964844 520.8087158203125 C 246.1132507324219 524.7852783203125 248.0453186035156 528.8762817382813 249.7500915527344 533.0634155273438 C 250.0976867675781 533.9151611328125 248.714599609375 534.2859497070313 248.3708801269531 533.4436645507813 C 245.3512878417969 526.0616455078125 241.6155090332031 518.993408203125 237.2171020507813 512.3402099609375 C 232.8400268554688 505.711181640625 227.8302001953125 499.5223388671875 222.258056640625 493.8607177734375 C 219.1064453125 490.6600341796875 215.7812194824219 487.635009765625 212.2974548339844 484.7993774414063 C 211.5833740234375 484.2178955078125 212.6006469726563 483.2113037109375 213.308837890625 483.7879638671875 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_suwv59 =
    '<svg viewBox="59.1 0.0 83.1 118.1" ><path transform="translate(-365.44, -189.93)" d="M 507.5690002441406 308.0483093261719 L 424.5 308.0483093261719 L 424.5 222.8172454833984 C 424.5 204.6837005615234 439.2526550292969 189.9310302734375 457.38623046875 189.9310302734375 L 474.6828918457031 189.9310302734375 C 492.8163757324219 189.9310302734375 507.5691223144531 204.6837005615234 507.5691223144531 222.8172454833984 L 507.5690002441406 308.0483093261719 Z" fill="#f2f2f2" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6uj6zo =
    '<svg viewBox="59.1 0.0 65.8 118.1" ><path transform="translate(-365.44, -189.93)" d="M 490.2720642089844 308.0513305664063 L 424.4996337890625 308.0513305664063 L 424.4996337890625 222.8202667236328 C 424.4814758300781 215.8719177246094 426.6817016601563 209.0991516113281 430.780029296875 203.4881134033203 C 430.9311218261719 203.2821960449219 431.081787109375 203.0789489746094 431.2372131347656 202.8779296875 C 433.2195434570313 200.2779846191406 435.5785827636719 197.9882507324219 438.2364501953125 196.0843353271484 C 438.3865966796875 195.9750823974609 438.5373229980469 195.8677520751953 438.6903076171875 195.7604064941406 C 440.914306640625 194.2213287353516 443.3201293945313 192.9631500244141 445.8529357910156 192.0145568847656 C 446.0033264160156 191.9575500488281 446.1564636230469 191.9004211425781 446.3096008300781 191.8456420898438 C 448.6003112792969 191.0281677246094 450.9748840332031 190.4682006835938 453.3894653320313 190.1760864257813 C 453.5391540527344 190.1556396484375 453.6928405761719 190.1396331787109 453.8464965820313 190.1236267089844 C 456.1995239257813 189.8720397949219 458.5726928710938 189.8720397949219 460.9256896972656 190.1236267089844 C 461.0789489746094 190.1396331787109 461.2326354980469 190.1556396484375 461.3840942382813 190.1763000488281 C 463.7980346679688 190.4684295654297 466.1719970703125 191.0283355712891 468.4620971679688 191.8456420898438 C 468.6152648925781 191.9004364013672 468.7684326171875 191.9575500488281 468.9192504882813 192.0146789550781 C 471.4208374023438 192.9513244628906 473.7983093261719 194.1907043457031 475.9986572265625 195.7051849365234 C 476.1514892578125 195.8101959228516 476.3045349121094 195.9175262451172 476.4552612304688 196.0248718261719 C 477.945068359375 197.0883331298828 479.3444213867188 198.2731018066406 480.6390991210938 199.5670318603516 C 481.6773376464844 200.6049194335938 482.6448059082031 201.7112426757813 483.5350341796875 202.8786010742188 C 483.6899108886719 203.0789489746094 483.8406066894531 203.2822113037109 483.9913940429688 203.48779296875 C 488.08984375 209.098876953125 490.2901916503906 215.8717651367188 490.2720642089844 222.8202667236328 L 490.2720642089844 308.0513305664063 Z" fill="#cccccc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_jy1372 =
    '<svg viewBox="131.2 104.8 4.1 10.8" ><path transform="translate(-445.3, -355.69)" d="M 580.6237182617188 471.257080078125 L 577.83349609375 471.257080078125 L 576.5059814453125 460.4949951171875 L 580.6241455078125 460.4952392578125 L 580.6237182617188 471.257080078125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9mkvh0 =
    '<svg viewBox="127.2 114.8 8.8 3.4" ><path transform="translate(-431.54, -389.51)" d="M 562.0830078125 504.2799682617188 L 567.464111328125 504.2799682617188 L 567.464111328125 507.6680297851563 L 558.6950073242188 507.6680297851563 L 558.6950073242188 507.6680297851563 C 558.6950073242188 505.7968444824219 560.2119140625 504.2799682617188 562.0830078125 504.2799682617188 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fxjkkr =
    '<svg viewBox="145.1 104.8 4.1 10.8" ><path transform="translate(-492.42, -355.69)" d="M 641.6236572265625 471.257080078125 L 638.83349609375 471.257080078125 L 637.5059814453125 460.4949951171875 L 641.6242065429688 460.4952392578125 L 641.6236572265625 471.257080078125 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_k9k1e9 =
    '<svg viewBox="141.0 114.8 8.8 3.4" ><path transform="translate(-478.66, -389.51)" d="M 623.0831298828125 504.2799682617188 L 628.464111328125 504.2799682617188 L 628.464111328125 507.6680297851563 L 619.6950073242188 507.6680297851563 L 619.6950073242188 507.6680297851563 C 619.6950073242188 505.7968444824219 621.2119140625 504.2799682617188 623.0830688476563 504.2799682617188 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_n8h438 =
    '<svg viewBox="120.9 47.3 15.6 30.8" ><path transform="translate(-575.34, -350.56)" d="M 696.6659545898438 427.6376953125 C 696.2595825195313 427.0390625 696.1392822265625 426.2911376953125 696.33740234375 425.59521484375 C 696.5355224609375 424.8993530273438 697.03173828125 424.326904296875 697.6924438476563 424.0320434570313 L 707.17724609375 397.889892578125 L 711.8443603515625 400.4370727539063 L 701.0145874023438 425.41943359375 C 701.4459228515625 426.5879516601563 700.93505859375 427.8943481445313 699.8255615234375 428.4603271484375 C 698.7160034179688 429.0263061523438 697.3585205078125 428.6729736328125 696.6657104492188 427.6378784179688 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_6ksl0z =
    '<svg viewBox="144.2 50.6 7.3 31.7" ><path transform="translate(-654.35, -361.81)" d="M 802.1295776367188 443.8025512695313 C 801.5018920898438 443.4426879882813 801.0658569335938 442.8232421875 800.938720703125 442.1109313964844 C 800.8116455078125 441.3986206054688 801.006591796875 440.6665954589844 801.47119140625 440.1118774414063 L 798.5330200195313 412.4580078125 L 803.8444213867188 412.7006530761719 L 805.0654296875 439.9019470214844 C 805.9653930664063 440.7630004882813 806.0790405273438 442.1610412597656 805.330078125 443.1562194824219 C 804.5810546875 444.1513366699219 803.2061767578125 444.4290466308594 802.1296997070313 443.8026123046875 Z" fill="#ffb8b8" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5k0ham =
    '<svg viewBox="130.9 44.5 18.6 31.2" ><path transform="translate(-609.24, -341.13)" d="M 756.985107421875 416.8254089355469 L 740.1329956054688 416.8254089355469 L 740.1532592773438 416.6942749023438 C 740.18359375 416.4982604980469 743.1566772460938 397.0219421386719 740.9638671875 390.6502075195313 C 740.5081787109375 389.3534545898438 741.10400390625 387.9217834472656 742.34521484375 387.3312377929688 L 742.34521484375 387.3312377929688 C 745.4794921875 385.8552551269531 751.495849609375 384.0377502441406 756.573974609375 388.448486328125 C 758.0889892578125 389.7860412597656 758.8863525390625 391.7584228515625 758.726806640625 393.7730712890625 L 756.985107421875 416.8254089355469 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_l3k011 =
    '<svg viewBox="126.5 46.4 9.8 12.4" ><path transform="translate(-594.48, -347.47)" d="M 728.6048583984375 406.2430419921875 L 721.0180053710938 404.7038879394531 L 724.5743408203125 396.2763977050781 C 725.0140991210938 394.5729064941406 726.7515869140625 393.5484313964844 728.455078125 393.9882202148438 C 730.1585693359375 394.4280090332031 731.1829833984375 396.1654357910156 730.7432250976563 397.8689270019531 L 728.6048583984375 406.2430419921875 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5w1isk =
    '<svg viewBox="143.3 47.0 8.1 14.6" ><path transform="translate(-651.44, -349.47)" d="M 795.2899169921875 411.1029663085938 L 794.8338012695313 400.6473388671875 C 794.4879760742188 398.6818237304688 795.6130981445313 396.8237915039063 797.343505859375 396.5200805664063 C 799.0744018554688 396.2174682617188 800.7645263671875 397.5806884765625 801.1119384765625 399.5606079101563 L 802.8263549804688 409.3303833007813 L 795.2899169921875 411.1029663085938 Z" fill="#304ffe" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_czxlgd =
    '<svg viewBox="130.0 74.4 19.8 37.8" ><path transform="translate(-606.16, -442.6)" d="M 753.3429565429688 517.0490112304688 C 756.0545043945313 527.3760986328125 756.350341796875 540.506103515625 755.6187744140625 554.8283081054688 L 751.9774169921875 554.3731689453125 L 745.37744140625 527.0628051757813 L 741.736083984375 554.8283081054688 L 737.6395263671875 554.6007690429688 C 736.4156494140625 539.5733032226563 735.2240600585938 526.6724853515625 737.184326171875 518.1869506835938 L 753.3429565429688 517.0490112304688 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_o7xdk0 =
    '<svg viewBox="132.6 28.7 13.1 13.1" ><path transform="translate(-615.02, -287.44)" d="M 758.0119018554688 328.6589965820313 C 756.9691162109375 329.7698059082031 755.0325317382813 329.1735229492188 754.8966064453125 327.656005859375 C 754.885986328125 327.5381774902344 754.88671875 327.4196166992188 754.89892578125 327.3019409179688 C 754.9691162109375 326.6297607421875 755.357421875 326.0194702148438 755.264404296875 325.3097534179688 C 755.243408203125 325.1331176757813 755.1776123046875 324.9647521972656 755.0732421875 324.8206787109375 C 754.2423095703125 323.7079467773438 752.2916259765625 325.3183898925781 751.50732421875 324.31103515625 C 751.0264892578125 323.6933898925781 751.591796875 322.7208557128906 751.2227172851563 322.030517578125 C 750.7357177734375 321.1193542480469 749.2930908203125 321.56884765625 748.3883666992188 321.0698547363281 C 747.3818359375 320.5146484375 747.4420166015625 318.9703063964844 748.1046142578125 318.0309448242188 C 748.9126586914063 316.8853759765625 750.3294067382813 316.2741088867188 751.728515625 316.1860046386719 C 753.127685546875 316.097900390625 754.5172119140625 316.4761352539063 755.8233642578125 316.9851684570313 C 757.3074951171875 317.5635375976563 758.7791748046875 318.3628540039063 759.6925048828125 319.6678161621094 C 760.80322265625 321.2548217773438 760.9100341796875 323.3883972167969 760.3546142578125 325.2440795898438 C 760.0167236328125 326.3728942871094 758.863525390625 327.7518615722656 758.0119018554688 328.6589965820313 Z" fill="#2f2e41" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mof04k =
    '<svg viewBox="22.9 117.7 168.6 1.0" ><path transform="translate(-242.62, -589.47)" d="M 433.7918701171875 707.7345581054688 L 265.7662353515625 707.7345581054688 C 265.6165771484375 707.7344970703125 265.4952697753906 707.6132202148438 265.4952697753906 707.4635620117188 C 265.4952697753906 707.3138427734375 265.6165771484375 707.1925659179688 265.7662353515625 707.1925659179688 L 433.7918701171875 707.1925659179688 C 433.9414978027344 707.1925659179688 434.0628356933594 707.3138427734375 434.0628356933594 707.4635620117188 C 434.0628356933594 707.6132202148438 433.9414978027344 707.7344970703125 433.7918701171875 707.7344970703125 Z" fill="#3f3d56" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_h03ro8 =
    '<svg viewBox="75.7 24.5 32.5 69.0" ><path transform="translate(-421.83, -272.96)" d="M 528.5655517578125 366.3893127441406 L 498.979248046875 366.3893127441406 C 498.16796875 366.3936767578125 497.5062255859375 365.7405700683594 497.4999389648438 364.9292907714844 L 497.4999694824219 298.890625 C 497.5061950683594 298.079345703125 498.16796875 297.4262084960938 498.979248046875 297.4306030273438 L 528.5655517578125 297.4306030273438 C 529.3768310546875 297.4262390136719 530.0385131835938 298.079345703125 530.0447998046875 298.890625 L 530.0447998046875 364.9291381835938 C 530.03857421875 365.740478515625 529.3768310546875 366.3936767578125 528.5655517578125 366.3893127441406 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rf64j =
    '<svg viewBox="261.0 794.2 78.3 25.8" ><path transform="translate(261.0, 794.23)" d="M 4.792648315429688 0 L 73.47541809082031 0 C 76.12232208251953 0 78.26806640625 2.547731637954712 78.26806640625 5.690518379211426 L 78.26806640625 20.08243179321289 C 78.26806640625 23.22521591186523 76.12232208251953 25.77294921875 73.47541809082031 25.77294921875 L 4.792648315429688 25.77294921875 C 2.145741701126099 25.77294921875 0 23.22521591186523 0 20.08243179321289 L 0 5.690518379211426 C 0 2.547731637954712 2.145741701126099 0 4.792648315429688 0 Z" fill="#ffebee" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
