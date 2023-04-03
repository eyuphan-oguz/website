import 'package:flutter/material.dart';
import 'package:website/view/home_page_view.dart';
import 'package:website/view/services_page_view.dart';

import 'hire_me_button_widget.dart';


class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _appbarIcon(text: 'Eyuphan'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _menuItem(text: 'ABOUT ME', onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePageView())); }),
            _menuItem(text: 'SERVICES', onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>ServicesPageView())); }),
            _menuItem(text: 'PORTFOLIO', onPressed: () {  }),
            _menuItem(text: 'TESTIMONIALS', onPressed: () {  }),
            _menuItem(text: 'CONTACT ME', onPressed: () {  }),
          ],
        ),
        HireMeButtonWidget(size: size,),

      ],
    );
  }


  Widget _menuItem({required String text, required Function()? onPressed}){
    return TextButton(onPressed: onPressed, child: Text(text,style: TextStyle(fontFamily: "Poppins",color: Color.fromRGBO(0, 0, 0, 0.81),fontWeight: FontWeight.w800,fontSize: 14),));
  }


  Widget _appbarIcon({required String text}){
    return Text(text, style: TextStyle(
      fontFamily: 'Imperial',
      fontSize: 31,
      fontWeight: FontWeight.w800,
      color: Colors.black,),);
  }

}



