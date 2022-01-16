import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';


class menus extends StatelessWidget {
  const menus({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          children: [
            Container(
                padding:const EdgeInsets.all(16.0),
                decoration:kBoxDecoration,
                child:Icon(FontAwesomeIcons.brain,size: 30.0,color: Colors.pinkAccent.shade700)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Clam',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(width: width*0.05),
        Column(
          children: [
            Container(
                padding:const EdgeInsets.all(16.0),
                decoration:kBoxDecoration,
                child:Icon(FontAwesomeIcons.heart,size: 30.0,color: Colors.pinkAccent.shade700)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Heart',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(width: width*0.05),
        Column(
          children: [
            Container(
                padding:const EdgeInsets.all(16.0),
                decoration:kBoxDecoration,
                child:Icon(FontAwesomeIcons.moon,size: 30.0,color: Colors.pinkAccent.shade700)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Sleep',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(width: width*0.05),
        Column(
          children: [
            Container(
                padding: EdgeInsets.all(16.0),
                decoration: kBoxDecoration,
                child: Icon(FontAwesomeIcons.smile,size: 30.0,color: Colors.pinkAccent.shade700,)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Relax',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(width: width*0.05),
        Column(
          children: [
            Container(
                padding:const EdgeInsets.all(16.0),
                decoration:kBoxDecoration,
                child:Icon(FontAwesomeIcons.eye,size: 30.0,color: Colors.pinkAccent.shade700)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Focus',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(width: width*0.05),
        Column(
          children: [
            Container(
                padding:const EdgeInsets.all(16.0),
                decoration:kBoxDecoration,
                child:Icon(FontAwesomeIcons.lightbulb,size: 30.0,color: Colors.pinkAccent.shade700)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Sharp',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(width: width*0.05),
        Column(
          children: [
            Container(
                padding:const EdgeInsets.all(16.0),
                decoration:kBoxDecoration,
                child:Icon(FontAwesomeIcons.theaterMasks,size: 30.0,color: Colors.pinkAccent.shade700)),
            SizedBox(height:MediaQuery.of(context).size.height *0.01),
            Text('Emotion',style: TextStyle(fontSize:width *0.04,fontFamily: 'Montserrat',fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
}
