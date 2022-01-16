// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation/components/menus.dart';
import 'package:meditation/screens/play.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffF3EDEA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.pinkAccent.shade700),
        leading: Icon(FontAwesomeIcons.ellipsisH,size: 28.0,),
        actions: [
          CircleAvatar(backgroundImage:AssetImage('images/user.png'),backgroundColor: Colors.purple.shade100,)
        ],
      ),
      body:Container(
        padding:const EdgeInsets.only(left:16.0),
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
             Text('Welcome Back',style:TextStyle(fontSize:width* 0.06,fontFamily:'Montserrat',fontWeight: FontWeight.w900)),
             Text('Audrey!',style:TextStyle(fontSize:width* 0.06)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.12,
                  child: menus(width: width),
                ),
              ),
              Card(shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
                  color:Colors.indigo.shade400,
                child:Container(
                  padding: EdgeInsets.only(right: 20.0),
                  height:MediaQuery.of(context).size.height*0.25,
                  width: MediaQuery.of(context).size.width*0.900,
                  child:Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image(image:const AssetImage('images/half_girl.png'),height:MediaQuery.of(context).size.height *0.15,
                            alignment: Alignment.bottomLeft,),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ready to start your\nfirst session ?",style: TextStyle(fontSize:width* 0.04,color: Color(0xffffffff),fontWeight: FontWeight.bold,fontFamily: 'Montserrat')),
                          Text('Meditation to calm anger',style: TextStyle(fontSize: width*0.04,fontWeight: FontWeight.w300,color: Color(0xffffffff))),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('20 Minutes',style:TextStyle(fontSize: width*0.04,fontWeight: FontWeight.bold,color: Color(0xffffffff),fontFamily: 'Montserrat'),),
                              SizedBox(width: width*0.12,),
                              Icon(FontAwesomeIcons.solidPlayCircle,color: Color(0xffffffff),size:width *0.09,)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top:16.0,bottom: 16.0,right: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Meditations',style: TextStyle(fontSize: width*0.06,fontWeight: FontWeight.bold,fontFamily: 'Montserrat'),),
                    Text('View All',style: TextStyle(fontSize: width*0.04,color:Colors.grey),)
                  ],
                ),
              ),
              Container(
                height:MediaQuery.of(context).size.height*0.30,
                width: width,
                padding: EdgeInsets.only(bottom: 24.0),
                child: ListView(
                scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayIt()));},
                      child: Container(
                        width:width* 0.50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                            image: AssetImage('images/flower_background.png'),fit: BoxFit.cover
                          )
                        ),
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Train\nYour Mind',style: TextStyle(color:Color(0xffffffff),fontSize: width*0.04,fontWeight: FontWeight.bold,fontFamily: 'Montserrat')),
                                SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                                Text('The goal is to become more aware of your thoughts...',style: TextStyle(color:Color(0xffffffff),fontSize: width*0.03,fontFamily: 'Montserrat')),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('20 Sessions',style:TextStyle(color:Color(0xffffffff),fontSize: width*0.04),),
                                Icon(FontAwesomeIcons.solidPlayCircle,color: Color(0xffffffff),size: width*0.08,)
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: width*0.05),
                    Container(
                      width:width* 0.50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                              image: AssetImage('images/flower_background.png'),fit: BoxFit.cover
                          )
                      ),
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Quite\nThe Mind',style: TextStyle(color:Color(0xffffffff),fontSize: width*0.04,fontWeight: FontWeight.bold,fontFamily: 'Montserrat')),
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                              Text('With meditation we know what to do and what not to do...',style: TextStyle(color:Color(0xffffffff),fontSize: width*0.03,fontFamily: 'Montserrat')),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('20 Sessions',style:TextStyle(color:Color(0xffffffff),fontSize: width*0.04),),
                              Icon(FontAwesomeIcons.solidPlayCircle,color: Color(0xffffffff),size: width*0.08,)
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: width*0.05,),
                    Container(
                      width:width* 0.50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          image: DecorationImage(
                              image: AssetImage('images/flower_background.png'),fit: BoxFit.cover
                          )
                      ),
                      padding: EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Focus\nYour Mind',style: TextStyle(color:Color(0xffffffff),fontSize: width*0.04,fontWeight: FontWeight.bold,fontFamily: 'Montserrat')),
                              SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                              Text('Choose a target for your focus and relax your body...',style: TextStyle(color:Color(0xffffffff),fontSize: width*0.03,fontFamily: 'Montserrat')),

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('20 Sessions',style:TextStyle(color:Color(0xffffffff),fontSize: width*0.04),),
                              Icon(FontAwesomeIcons.solidPlayCircle,color: Color(0xffffffff),size: width*0.08,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]
          ),
        )
      )
    );
  }
}
