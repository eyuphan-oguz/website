import 'package:flutter/material.dart';
import 'package:website/widgets/appbar_widget.dart';


class ServicesPageView extends StatefulWidget {
  const ServicesPageView({Key? key}) : super(key: key);

  @override
  State<ServicesPageView> createState() => _ServicesPageViewState();
}

class _ServicesPageViewState extends State<ServicesPageView> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 90.0,vertical: 15),
        child: Column(
          children: [
            AppBarWidget(),
        ],
      ),
      ),
    );
  }
}
