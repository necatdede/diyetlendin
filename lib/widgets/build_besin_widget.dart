import 'package:diyetlendin/models/besin.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class BuildBesinWidget extends StatelessWidget {
  const BuildBesinWidget({
    Key? key,
    required this.besinler,
    required this.index,
  }) : super(key: key);

  final List<Besin> besinler;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 100,
            // width: width*0.4,
            decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.black.withOpacity(0.5),
              //     spreadRadius: 1,
              //     blurRadius: 7,
              //     offset: Offset(0, 3), // changes position of shadow
              //   ),
              // ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              image: DecorationImage(
                  // colorFilter:
                  // ColorFilter.mode(Colors.black, BlendMode.dstATop),
                  // opacity: 30,
                  fit: BoxFit.fill,
                  image: NetworkImage(besinler[index].besinFoto)),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Container(
            height: 100,
            //width: width*0.6,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  besinler[index].besinAd,
                  style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  " " + besinler[index].kalori.toString() + " Kalori",
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/routeBesinDetay",
                arguments: besinler[index]);
          },
          icon: const Icon(LineIcons.infoCircle),
          iconSize: 40,
        ),
      ],
    );
  }
}
