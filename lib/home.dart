import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

import 'Add_Password.dart';

class home extends StatefulWidget {
  const home({Key key}) : super(key: key);

  @override
  _home createState() => _home();
}

class _home extends State<home> {
  final User user = FirebaseAuth.instance.currentUser;

  var _isVisible;
  ScrollController _hideButtonController;

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  initState() {
    super.initState();
    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible == true) {
          /* only set when the previous state is false
             * Less widget rebuilds
             */
          print("**** ${_isVisible} up"); //Move IO away from setState
          setState(() {
            _isVisible = false;
          });
        }
      } else {
        if (_hideButtonController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (_isVisible == false) {
            /* only set when the previous state is false
               * Less widget rebuilds
               */
            print("**** ${_isVisible} down"); //Move IO away from setState
            setState(() {
              _isVisible = true;
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white);

    return Scaffold(
      appBar: AppBar(
        // syatemOverlayStyle : SystemUiOverlayStyle(statusBarColor: Colors.white);
        elevation: 0,
        title: Text('FastPass'),

        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white70,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text(user.email),
                currentAccountPicture: Image.asset(
                  "assets/images/protect.png",
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
              ),
              Divider(),
              ListTile(
                title: Text("Close"),
                onTap: () => Navigator.of(context).pop(),
                trailing: Icon(Icons.close),
              )
            ],
          ),
        ),
      ),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection(user.uid)
              //  .doc() //ID OF DOCUMENT
              .snapshots(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            } else {
              return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                          controller: _hideButtonController,
                          shrinkWrap: true,
                          itemCount: snapshot.data.documents.length,
                          itemBuilder: (_, index) {
                            DocumentSnapshot documentSnapshot =
                                snapshot.data.documents[index];
                            return Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Card(
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: new InkWell(
                                  splashColor: Colors.blue[100],
                                  onLongPress: () {
                                    Widget cancelButton = FlatButton(
                                      child: Text(
                                        "Cancel",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green),
                                      ),
                                      onPressed: () => Navigator.pop(
                                          context, false), // passing false
                                    );
                                    Widget continueButton = FlatButton(
                                      child: Text(
                                        "Delete",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.red),
                                      ),
                                      onPressed: () async {
                                        CollectionReference users =
                                            FirebaseFirestore.instance
                                                .collection(user.uid);

                                        Future<void> deleteUser() {
                                          return users
                                              .doc(documentSnapshot["password"])
                                              .delete()
                                              .then((value) =>
                                                  print("User Deleted"))
                                              .catchError((error) => print(
                                                  "Failed to delete user: $error"));
                                        }

                                        deleteUser();

                                        Navigator.pop(
                                            context, false); // passing false
                                      },
                                    );

                                    // set up the AlertDialog
                                    AlertDialog alert = AlertDialog(
                                      backgroundColor: Colors.white,
                                      title: Text(
                                        "Delete Password!",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87),
                                      ),
                                      content: Text(
                                        "Would you like to delete your username and password ?",
                                        style: GoogleFonts.montserrat(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      ),
                                      actions: [
                                        cancelButton,
                                        continueButton,
                                      ],
                                    );

                                    // show the dialog
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return alert;
                                      },
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: Image.asset(
                                            "assets/images/protect.png",
                                            width: 24,
                                            height: 24,
                                            fit: BoxFit.fill),
                                        title: Text(
                                          documentSnapshot["Field"],
                                          style: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(left: 20.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "username : ",
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              documentSnapshot["name"],
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20.0, top: 10.0),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "password : ",
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              documentSnapshot["password"],
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.left,
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ),
                                      ButtonBar(
                                        alignment: MainAxisAlignment.end,
                                        children: [
                                          FlatButton(
                                            textColor: const Color(0xff304ffe),
                                            onPressed: () {
                                              // Perform some action
                                              Clipboard.setData(
                                                  new ClipboardData(
                                                      text: documentSnapshot[
                                                          "name"]));
                                            },
                                            child: Text(
                                              'Copy Username',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                          ),
                                          FlatButton(
                                            textColor: const Color(0xff304ffe),
                                            onPressed: () {
                                              // Perform some action
                                              Clipboard.setData(
                                                  new ClipboardData(
                                                      text: documentSnapshot[
                                                          "password"]));
                                            },
                                            child: Text(
                                              'Copy Password',
                                              style: GoogleFonts.montserrat(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 15),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ]);
            }
          }),
      floatingActionButton: Visibility(
        visible: _isVisible,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => add_password()),
            );
            // Add your onPressed code here!
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xff304ffe),
        ),
      ),
    );
  }
}
