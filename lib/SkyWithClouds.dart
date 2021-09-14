// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:clouds/SingleCloud.dart';

class SkyWithClouds extends StatefulWidget {
  @override
  _TestAnimationsState createState() => _TestAnimationsState();
}

class _TestAnimationsState extends State<SkyWithClouds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff99ccff),
        body: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("ATMOSPHERE HUSSEIN",style: TextStyle(
                    fontSize: 23,fontWeight: FontWeight.w900,color: Color(0xff99ccff),height: 2
                ),textAlign: TextAlign.center,),
                radius:90,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Cloud(seconds: 6,cloudDirection: TextDirection.rtl,),
                    Cloud(seconds: 4,cloudDirection: TextDirection.ltr),
                    Cloud(seconds: 5,cloudDirection: TextDirection.rtl),
                    Cloud(seconds: 8,cloudDirection: TextDirection.ltr),
                    Cloud(seconds: 5,cloudDirection: TextDirection.rtl),
                    Cloud(seconds: 6,cloudDirection: TextDirection.ltr),
                    Cloud(seconds: 4,cloudDirection: TextDirection.rtl),
                  ],),
              ),
            ],
          ),
        ));
  }
}
