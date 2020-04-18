
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Information"),
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('images/goyum.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              color: Colors.black,
              child: Column(

                children: <Widget>[
                  SizedBox(height: 18),
                  Text('goyum@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(

                    color: Colors.black,
                  ),),
                 

                    ],
                  ),
              ),
            
            
            Container(
              color: Colors.black,
              child: Column(

                children: <Widget>[
                  SizedBox(height: 20),
                  Text('GO-YUM merupakan salah franchise besar',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(
                    color: Colors.black,
                  ),),
                  SizedBox(height: 5),
                  Text('yang menjual ayam goreng dengan varian terbanyak.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(
                    color: Colors.black,
                  ),),
                  SizedBox(height: 5),
                  Text('Sudah tersebar di beberapa daerah Indonesia.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(
                    color: Colors.black,
                  ),),
                  SizedBox(height: 5),
                  Text('Terutama di kota Jakarta, Denpasar dan Bandung.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5,child: Container(
                    color: Colors.black,
                  ),),
                  SizedBox(height: 5),
                  Text('Pemilik GO-YUM tersebut adalah Agus Aditya.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 150,child: Container(
                    color: Colors.black,
                  ),),
                ],
              ),
            )

          ],
        ),
      );
  }
}