import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'constants.dart';
import 'login_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 30, 30),
                child: Expanded(child: Image.asset('images/home_page.png'))),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    onPressed: () {
                      print('Button Clicked.');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Page()));
                    },
                    textColor: Colors.white,
                    color: k_button_color,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            color: k_button_color,
                            padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                            child: Text(
                              'E-Prescription',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  backgroundColor: Colors.transparent),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    onPressed: () {
                      print('Button Clicked.');
                    },
                    // textColor: Colors.white,
                    color: Colors.grey,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 40,
                          ),
                          // Container(
                          //   color: k_button_color,
                          //   padding: EdgeInsets.fromLTRB(10, 4, 4, 4),
                          //   child: Text(
                          //     '',
                          //     style: TextStyle(color: Colors.grey, fontSize: 30),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
