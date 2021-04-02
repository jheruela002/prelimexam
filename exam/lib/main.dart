import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  get icon => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
        backgroundColor: Colors.orange[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.orange[900],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(22.0),
          child: Column(
            children: <Widget>[
              // ignore: deprecated_member_use
              RaisedButton.icon(
                onPressed: () {},
                color: Colors.blue[900],
                icon: Icon(
                  FontAwesomeIcons.facebookF,
                  color: Colors.white,
                  size: 20,
                ),
                label: Text(
                  "    Connect with Facebook                              ",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(5.0),
                ),
              ),

              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 0.0, right: 10.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 36,
                      )),
                ),
                Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 0.0),
                      child: Divider(
                        color: Colors.grey,
                        height: 36,
                      )),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Enter your email address",
                      style: TextStyle(color: Colors.black87, fontSize: 17)),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.greenAccent.shade400),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: ButtonTheme(
                  minWidth: 320.0,
                  height: 37.0,
                  child: MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(5.0),
                    ),
                    color: Colors.green[500],
                    child: Text(
                      "Next step",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
