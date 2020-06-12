import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fid_widgets/fid_widgets.dart';

void main() {
  runApp(FirstPage());
}

/// first page "New Account"

enum SingingCharacter { lafayette, jefferson }

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'New Account'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 406.0,
              height: 150.0,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //icon: SvgPicture.asset("assets/svg_home.svg"),
                  //Icon(Icons.ac_unit),
                  ClipRect(
                      child: SvgPicture.asset(
                    "assets/cameraIcon.svg",
                    width: 40.0,
                    height: 40.0,
                  )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 200,
                      child: AutoSizeText.rich(

                        TextSpan(
                            text:
                            'Use the camera on the Pulse to add a profile photo',

                            ),
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            color: Colors.grey[300],
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'First Name'),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Roboto"),
                  ),
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Last Name"),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Merriweather"),
                  ),
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Birth Day"),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Merriweather"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Radio(
                        activeColor: Colors.yellowAccent,
                        value: SingingCharacter.lafayette,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                            print("value1:$_character");
                          });
                        },
                      ),
                      Text("Male",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.normal)),
                      SizedBox(
                        width: 37.0,
                        height: 33.0,
                      ),
                      Radio(
                        activeColor: Colors.yellowAccent,
                        value: SingingCharacter.jefferson,
                        groupValue: _character,
                        onChanged: (SingingCharacter value) {
                          setState(() {
                            _character = value;
                            print("value2:$_character");
                          });
                        },
                      ),
                      Text("Female",
                          style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.normal)),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellowAccent,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.chevron_right,
                size: 70.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),

//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// end of first page "New Account"

/// start of second page "Next"

enum SingingCharacterPage2 { Agree, Update }

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(title: 'Next'),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePage2State createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  SingingCharacterPage2 _character = SingingCharacterPage2.Agree;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            color: Colors.grey[300],
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Email'),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Roboto"),
                  ),
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Confirm Email"),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Merriweather"),
                  ),
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: "Password"),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Merriweather"),
                  ),
                  new TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Confirm Password"),
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.normal,
                        fontFamily: "Merriweather"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 80.0,
                            height: 33.0,
                          ),
                          Radio(
                            activeColor: Colors.yellowAccent,
                            value: SingingCharacterPage2.Agree,
                            groupValue: _character,
                            onChanged: (SingingCharacterPage2 value) {
                              setState(() {
                                _character = value;
                                print("value1:$_character");
                              });
                            },
                          ),
//                          Wrap(
//                            direction: Axis.vertical,
//                            children: <Widget>[
//                              Text("I agree to the Terms of Service",
//                                  style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontFamily: "Roboto",
//                                      fontWeight: FontWeight.normal)),
//                              Text("and Privacy Policy",
//                                  style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontFamily: "Roboto",
//                                      fontWeight: FontWeight.normal)),
//                              Text("Terms of Service",
//                                  style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontFamily: "Roboto",
//                                      color: Colors.blue,
//                                      fontWeight: FontWeight.normal)),
//                              Text("Privacy policy",
//                                  style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontFamily: "Roboto",
//                                      color: Colors.blue,
//                                      fontWeight: FontWeight.normal)),
//                            ],
//                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 200,
                              child: AutoSizeText.rich(
                                TextSpan(
                                    text:
                                        'I agree to the Terms of Service and Privacy Policy Terms of Service Privacy Policy',
                                    children: <TextSpan>[
                                      TextSpan(
                                          text:
                                              '        Terms of Service Privacy Policy',
                                          style: TextStyle(color: Colors.blue))
                                    ]),
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 37.0,
                        height: 33.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 80.0,
                            height: 33.0,
                          ),
                          Radio(
                            activeColor: Colors.yellowAccent,
                            value: SingingCharacterPage2.Update,
                            groupValue: _character,
                            onChanged: (SingingCharacterPage2 value) {
                              setState(() {
                                _character = value;
                                print("value2:$_character");
                              });
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              width: 200,
                              child: AutoSizeText.rich(
                                TextSpan(
                                    text:  'Keep me updated about news, and promotion',
                                    style: TextStyle(fontSize: 14),
                              ),
                            ),
                          )
//                          Column(
//                            crossAxisAlignment: CrossAxisAlignment.start,
//                            children: <Widget>[
//                              Text("Keep me updated about",
//                                  style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontFamily: "Roboto",
//                                      fontWeight: FontWeight.normal)),
//                              Text("news, and promotion ",
//                                  style: TextStyle(
//                                      fontSize: 14.0,
//                                      fontFamily: "Roboto",
//                                      fontWeight: FontWeight.normal)),
//                            ],
//                          ),
                          )],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellowAccent,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check,
                size: 40.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// end of second page

/// animation task


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: MyAnimations(),
      // home: StateFullW(),
      // home: StateLessW()
    );
  }
}

class MyAnimations extends StatefulWidget {
  MyAnimations({Key key}) : super(key: key);

  @override
  _MyAnimationsState createState() => _MyAnimationsState();
}

class _MyAnimationsState extends State<MyAnimations> {
  double _left = 50;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onHorizontalDragEnd: (s) {
                  setState(
                        () {
                      _left = _left + 100;
                    },
                  );
                },
                child: MoveBox(left: _left),
              ),
              RaisedButton.icon(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    _left = _left + 100;
                  });
                },
                label: Text("next"),
              ),
              SingleChildScrollView(
                child: TitledBoarderFormField(
                  icon: Icons.account_circle,
                  title: "user name",
                  textForgroundColor: Colors.purpleAccent,
                ),
              ),
              RaisedButton.icon(
                icon: Icon(Icons.refresh),
                onPressed: () {
                  setState(
                        () {
                      _left = 50;
                    },
                  );
                },
                label: Text("restart"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MoveBox extends StatefulWidget {
  const MoveBox({Key key, @required double left})
      : _left = left,
        super(key: key);

  final double _left;

  @override
  _MoveBoxState createState() => _MoveBoxState();
}

class _MoveBoxState extends State<MoveBox> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 400,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            left: widget._left,
            width:widget._left+ widget._left*2,
            child: ClipRect(
                child: SvgPicture.asset(
                  "assets/cameraIcon.svg",
                  width: 40.0,
                  height: 40.0,
                )),
//            child: Container(
//              width: 50,
//              height: 100,
//              color: Colors.black87,
//            ),
          )
        ],
      ),
    );
  }
}

class StateLessW extends StatelessWidget {
  const StateLessW({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("abc"),
    );
  }
}

class StateFullW extends StatefulWidget {
  StateFullW({Key key}) : super(key: key);

  @override
  _StateFullWState createState() => _StateFullWState();
}

class _StateFullWState extends State<StateFullW> {
  int x = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text("next"),
          onPressed: () {
            setState(() {
              x = 6;
            });
          },
        ),
        Container(
          child: Text("$x"),
        ),
      ],
    );
  }
}


