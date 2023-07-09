import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class algeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(217, 167, 199, 1),
            Color.fromRGBO(248, 211, 151, 1.0),
            Color.fromRGBO(255, 252, 220, 1),
          ],
        ),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('countries')
                    .doc('Algeria')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Text('Loading data.. please wait..');
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'DESCRIPTION',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['description'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(25.0),
                          child: Image.network(
                            snapshot.data['image'],
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'ARCHITECTURE',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['Architecture'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'POLITICS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['Politics'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'TRADITIONS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['Tradition'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'CUISINE',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['cuisine'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'FESTIVALS',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['festivals'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival1'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival10'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival11'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival12'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival13'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival14'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival2'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival3'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival4'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival5'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival6'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival7'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival8'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['festival9'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'GEOGRAPHY',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['geography'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'LANGUAGES',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['languages '],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(
                          snapshot.data['languagetradition'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'RELIGION',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          snapshot.data['religion'],
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(247, 178, 222, 1),
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
