import 'package:flutter/material.dart';

class HireMeButtonWidget extends StatefulWidget {
  const HireMeButtonWidget({Key? key, required this.size}) : super(key: key);
  final Size size;
  @override
  State<HireMeButtonWidget> createState() => _HireMeButtonWidgetState();
}

class _HireMeButtonWidgetState extends State<HireMeButtonWidget> {
  final String text="Hire me";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.size.width*0.08,
      height: widget.size.height*0.04,
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xFFFCC028),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: FittedBox(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, // Beyaz font rengi
                fontWeight: FontWeight.w900,
                fontSize: 15,
                fontFamily: "Poppins"
            ),
          ),
        ),
      ),
    );
  }
}
