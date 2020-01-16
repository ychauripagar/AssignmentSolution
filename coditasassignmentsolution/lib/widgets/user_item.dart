import 'package:coditasassignmentsolution/model/UserModel.dart';
import 'package:flutter/material.dart';

class UserItem extends StatefulWidget {
  final UserModel userModel;
  final MediaQueryData mediaQueryData;

  UserItem(this.userModel, this.mediaQueryData);

  @override
  _UserItemState createState() => _UserItemState();
}

class _UserItemState extends State<UserItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: double.maxFinite,
              height: widget.mediaQueryData.size.height * 0.2,
              color: Colors.black54,
            ),
            Container(
              width: double.maxFinite,
              height: widget.mediaQueryData.size.height * 0.8,
              color: Colors.white30,
            )
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.all(15),
            child: Card(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: NetworkImage('http://api.randomuser.me/portraits/women/28.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,

                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                 Text("My Address is"),
                  SizedBox(
                    height: 8,
                  ),
                 FittedBox(child: Text("4661 Auburn",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                 /* Container(
                    padding: EdgeInsets.all(6),

                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                          'http://api.randomuser.me/portraits/women/28.jpg'),
                    ),
                  ),*/
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
