import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation/screens/main_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details){
          if(details.delta.dx < 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
          }
        },
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Container(
              padding:const EdgeInsets.symmetric(vertical: 100.0,horizontal: 24.0),
              // color:Colors.pinkAccent.shade700,
                decoration:BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.fitHeight,
                    image:AssetImage('images/background.png')
                  )
                ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                const  Text('Welcome To',style: TextStyle(fontSize: 28.0,color: Color(0xffffffff),fontWeight: FontWeight.bold,fontFamily: 'Montserrat')),
                const  Text('Meditation Center',style:TextStyle(fontSize: 24.0,fontWeight: FontWeight.w100,color: Color(0xffffffff),fontFamily: 'Montserrat')),
                  SizedBox(
                    height:MediaQuery.of(context).size.height *0.02,
                  ),
                const  Text("Let's Start  ➡", style: TextStyle(color:Color(0xffffffff),fontSize: 20.0,fontStyle: FontStyle.italic,fontWeight: FontWeight.w400,fontFamily: 'Montserrat'),)
                ],
              )
            ),
            // Container(
            //   margin:const EdgeInsets.only(top: 450.0),
            //   height: MediaQuery.of(context).size.height *0.50 ,
            //   decoration:const BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       topRight: Radius.circular(200.0),
            //       topLeft: Radius.circular(200.0),
            //     ),
            //     color: Color(0xffF6EAEA)
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top:350.0,left: 24.0,right: 24.0),
              child: Image(image:const AssetImage('images/meditation.png'),height:MediaQuery.of(context).size.height *0.45,alignment: Alignment.center,),
            ),
          ],
        ),
      ),
    );
  }
}
