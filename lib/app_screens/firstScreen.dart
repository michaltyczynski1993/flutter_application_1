import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.deepPurple,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Spice Jet',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'Trip from Poznań to Warsaw',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Colors.white),
                    )),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'LOT',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35.0,
                            color: Colors.white),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      'Z Warszawy do Gdanska',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Colors.white),
                    )),
                  ],
                ),
                FlightAssetImage()
              ],
            )));
  }
}

class FlightAssetImage extends StatelessWidget {
  const FlightAssetImage({super.key});

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/starbucks.png');
    Image image = Image(
      image: assetImage,
      width: 100.0,
      height: 100.0,
    );
    return Container(child: image);
  }
}
