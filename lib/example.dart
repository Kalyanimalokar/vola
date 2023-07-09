import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Armenia extends StatelessWidget {
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
                    .doc('Armenia')
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
                        SizedBox(height: 20),
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
