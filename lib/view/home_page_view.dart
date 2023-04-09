import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:website/firebaseDocId.dart';
import 'package:website/widgets/appbar_widget.dart';
import 'package:website/widgets/hire_me_button_widget.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('aboutMe').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){

          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator.adaptive();
          }
          print(snapshot.data!.docs[FirebaseDocId().docId]["title"]);
          print(snapshot.data!.docs[FirebaseDocId().docId]["helloContent"]);
          print(snapshot.data!.docs[FirebaseDocId().docId]["subtitle"]);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 15),
              child: Column(
                children: [
                  AppBarWidget(),
                  SizedBox(height: size.height*0.1,),
                  Container(
                    width: size.width,
                    height: size.height*0.6,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(snapshot.data!.docs[FirebaseDocId().docId]["helloContent"],style: TextStyle(color: Color(0xFFFCC028),fontFamily: 'Poppins',fontSize: 17,fontWeight: FontWeight.w700),),
                                    SizedBox(height: size.height*0.015,),
                                    Text(snapshot.data!.docs[FirebaseDocId().docId]["title"],style: TextStyle(color: (Colors.black),fontFamily: 'Poppins',fontSize: 50,fontWeight: FontWeight.w700),),
                                    SizedBox(height: size.height*0.015,),
                                    Text(snapshot.data!.docs[FirebaseDocId().docId]["subtitle"],style: TextStyle(color: Color(0xFF207733),fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.w500)),
                                    SizedBox(height: size.height*0.015,),
                                    Text(snapshot.data!.docs[FirebaseDocId().docId]["description"],style: TextStyle(color: Color(0xff808080),fontFamily: 'Poppins',fontSize: 17.52,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis,),maxLines: 4,),
                                    SizedBox(height: size.height*0.03,),
                                    Row(
                                      children: [
                                        HireMeButtonWidget(size: size, ),
                                        SizedBox(width: size.width*0.015,),
                                        TextButton(onPressed: (){}, child: Row(children: [Text(snapshot.data!.docs[FirebaseDocId().docId]["button2Text"],
                                          style: TextStyle(
                                              color: Colors.black, // Beyaz font rengi
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15,
                                              fontFamily: "Poppins"
                                          ),
                                        ),
                                          SizedBox(width: size.width*0.005,),
                                          Icon(Icons.download_rounded,color: Color(0xFFFCC028),)])),
                                      ],
                                    )
                                  ],
                                ),
                                Container(width: size.width*0.3,height: size.height*0.17,color: Colors.red,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:  [
                                          ListTile(
                                            contentPadding: EdgeInsets.only(left: 0),
                                            leading: CircleAvatar(),
                                            title: Text(snapshot.data!.docs[FirebaseDocId().docId]["commentAuthor"]),
                                            subtitle: Text(snapshot.data!.docs[FirebaseDocId().docId]["commentDate"]),

                                          ),
                                          Text(snapshot.data!.docs[FirebaseDocId().docId]["commentContent"],
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500
                                            ),)
                                        ],
                                      ),
                                    ),
                                  ),)
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 5,
                          child: Container(

                            child: Image.asset("assets/images/deneme.png",fit: BoxFit.contain,),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );


        },
      )
    );
  }
}
