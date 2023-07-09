import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vola1/Algeria.dart';
import 'package:vola1/Andorra.dart';
import 'package:vola1/Argentina.dart';
import 'package:vola1/Armenia.dart';
import 'package:vola1/Austrailia.dart';
import 'package:vola1/Bahamas.dart';
import 'package:vola1/Bahrain.dart';
import 'package:vola1/Bangladesh.dart';
import 'package:vola1/Barbados.dart';
import 'package:vola1/India.dart';
import 'package:vola1/afghanistan.dart';
import 'package:vola1/albania.dart';
import 'package:vola1/baden.dart';
import 'package:vola1/pageShow.dart';

class test extends StatelessWidget {
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
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTile(
                title: Text('Afghanistan',
                    style: TextStyle(color: Colors.black87, fontSize: 20)),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Afghanistan')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(snapshot.data['name'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => afghanistan(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Albania',
                    style: TextStyle(color: Colors.black87, fontSize: 20)),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Albania')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(snapshot.data['name'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => albania(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Algeria',
                    style: TextStyle(color: Colors.black87, fontSize: 20)),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Algeria')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(snapshot.data['name'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => algeria(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text('Andorra',
                    style: TextStyle(color: Colors.black87, fontSize: 20)),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Andorra')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(snapshot.data['name'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Andorra(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Angola',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Angola')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PageShow(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Argentina',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Argentina')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Argentina(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Armenia',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Armenia')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Armenia(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Australia',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Austrailia')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Austrailia(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Baden',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Baden')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Baden(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Bahamas',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Bahamas')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bahamas(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Bahrain',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Bahrain')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bahrain(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Bangladesh',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Bangladesh')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bangladesh(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'Barbados',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('Barbados')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Barbados(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                  'India',
                  style: TextStyle(color: Colors.black87, fontSize: 20),
                ),
                children: [
                  StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('countries')
                        .doc('India')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData)
                        return Text('Loading data.. please wait..');
                      return ListTile(
                        title: Text(
                          snapshot.data['name'],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(snapshot.data['description'],
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        contentPadding: EdgeInsets.all(20),
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(45.0),
                          child: Image.network(
                            snapshot.data['image'],
                            height: 200,
                            width: 80,
                          ),
                        ),
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => India(),
                            ),
                          ),
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(219, 132, 188, 1),
        ),
        // backgroundColor: Color.fromRGBO(254, 191, 255, 1),
      ),
    );
  }
}
