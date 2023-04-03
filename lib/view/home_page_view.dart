import 'package:flutter/material.dart';
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
      body: Padding(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hello, I am",style: TextStyle(color: Color(0xFFFCC028),fontFamily: 'Poppins',fontSize: 17,fontWeight: FontWeight.w700),),
                              Text("CALEB NYONG",style: TextStyle(color: (Colors.black),fontFamily: 'Poppins',fontSize: 50,fontWeight: FontWeight.w700),),
                              Text("Mobile Developer & Computer Engineer",style: TextStyle(color: Color(0xFF207733),fontFamily: 'Poppins',fontSize: 20,fontWeight: FontWeight.w500)),
                              Text("I’m a top online marketer and branding expert, I started my caree by lauching the popular metaverse design, in just a few short years, I built the brand to millions of social media followers and websites visitors.",style: TextStyle(color: Color(0xff808080),fontFamily: 'Poppins',fontSize: 17.52,fontWeight: FontWeight.w500,overflow: TextOverflow.ellipsis,),maxLines: 4,),
                              Row(
                                children: [
                                  HireMeButtonWidget(size: size, ),
                                  TextButton(onPressed: (){}, child: Row(children: [Text("Download CV",
                                    style: TextStyle(
                                        color: Colors.black, // Beyaz font rengi
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15,
                                        fontFamily: "Poppins"
                                    ),
                                  ),Icon(Icons.download_rounded,color: Color(0xFFFCC028),)])),
                                ],
                              )
                            ],
                          ),
                          Container(width: size.width*0.3,height: size.height*0.2,color: Colors.red,
                          child: Card(
                            child: ListTile(
                              leading: CircleAvatar(),
                              title: Text("Feyzanur Yesildal"),
                              subtitle: Text("Sat 28 May 2022"),
                            ),
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
