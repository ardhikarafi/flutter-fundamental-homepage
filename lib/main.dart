import 'package:flutter/material.dart';
import 'fonts_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PTPN Apps',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        // home: MyHomePage(title: 'Flutter Demo Home Page'),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                "Portal Aplikasi",
                style: TextStyle(color: Colors.black38),
              ),
              backgroundColor: Colors.blue[100],
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.nature_people),
                  onPressed: () {},
                )
              ],
            ),
            body: SafeArea(
                child: Container(
                    // color: Colors.indigo,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg_apk.jpg'),
                          fit: BoxFit.fill),
                    ),
                    padding:
                        EdgeInsets.only(left: 0, right: 0, top: 50, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Image(
                              image: AssetImage('assets/images/logon9.png'),
                              height: 200,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.0, bottom: 4.0),
                              child: Text(
                                "PTPN IX",
                                style: mainHeader,
                              ),
                            ),
                            Text(
                              'Perkebunan Nusantara IX',
                              style: subHeader,
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 100.0, bottom: 4.0),
                            ),
                            ButtonTheme(
                              minWidth: 120.0,
                              height: 50.0,
                              child: RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  'Mulai',
                                  style: tombol,
                                ),
                                color: Colors.amberAccent,
                                splashColor: Colors.blueGrey,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.blue[300])),
                              ),
                            )
                          ],
                        ),
                      ],
                    )))));
  }
}
