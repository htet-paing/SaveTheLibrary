import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:save_the_library/pages/home/home_page.dart';

import 'package:save_the_library/main.dart';

//Dagon Downtown Library
// Need to invoke from Main()
class DagonPointApp extends StatefulWidget {
  @override
  DagonPointAppState createState() => DagonPointAppState();
}

class DagonPointAppState extends State<DagonPointApp> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
  }
  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => MyHomePage()),
             );
          },),
        title: Text("Dagon Library"),
        actions: <Widget>[
          IconButton(
              icon: Icon(FontAwesomeIcons.search),
              onPressed: () {
                //Need to Route n add Search Page
              }),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0, bottom: 77.0),
        child: Stack(
            children: <Widget>[
              _buildGoogleMap(context),
              _zoominusfunction(),
              _zoomplusfunction(),
              _buildContainer(),
            ],
          ),
      ),
    );
  }

  Widget _zoominusfunction() {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchMinus,color:Color(0xff6200ee)),
          onPressed: () {
            zoomVal--;
            _minus(zoomVal);
          }),
    );
  }

  Widget _zoomplusfunction() {
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
          icon: Icon(FontAwesomeIcons.searchPlus,color:Color(0xff6200ee)),
          onPressed: () {
            zoomVal++;
            _plus(zoomVal);
          }),
    );
  }
  // for _minus Func
  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(16.9101878, 96.0118898), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(16.9101878, 96.0118898), zoom: zoomVal)));
  }
  // Dagon DownTown Township Library Codes here 
  // Commented by ak1337
  // this method create Width of Slider Widget
  Widget _buildContainer() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 150.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/575/conversions/feature_image.jpg",
                  16.795, 96.1469, "Pyan Kyar Yae n Pyi Thu Sat San Yae Library"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/1206/conversions/feature_image.jpg",
                  16.795, 96.1469, "Mahar Ywar Library"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/811/conversions/feature_image.jpg",
                  16.795, 96.1469, "Myanmar Country Library"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/572/conversions/feature_image.jpg",
                  16.795, 96.1469, "Yangon Hlutaww Library"),
            ),
            
          ],
        ),
      ),
    );
  }
  // box wid get goes h3r3
  Widget _boxes(String _image, double lat,double long,String libraryName) {
    return GestureDetector(
      onTap: () {
        _gotoLocation(lat,long);
      },
      child: Container(
        child: new FittedBox(
          child: Material(
            color: Colors.white10,
            elevation: 14.0,
            borderRadius: BorderRadius.circular(24.0),
            shadowColor: Color(0x802196F3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 180,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(24.0),
                    child: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(_image),
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: myDetailsContainer1(libraryName),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDetailsContainer1(String libraryName) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Text(libraryName,
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(height: 5.0),
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    child: Text(
                      "4.1",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 18.0,
                      ),
                    )),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                  child: Icon(
                    FontAwesomeIcons.solidStarHalf,
                    color: Colors.amber,
                    size: 15.0,
                  ),
                ),
                Container(
                    child: Text(
                      "(946)",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                      ),
                    )),
              ],
            )),
        // SizedBox(height: 5.0),
        // Container(
        //     child: Text(
        //       "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
        //       style: TextStyle(
        //         color: Colors.black45,
        //         fontSize: 18.0,
        //       ),
        //     )),
        // SizedBox(height: 5.0),
        // Container(
        //     child: Text(
        //       "American \u00B7 \u0024\u0024 \u00B7 1.6 mi",
        //       style: TextStyle(
        //         color: Colors.black54,
        //         fontSize: 18.0,
        //       ),
        //     )),
        // Container(
        //   child: Text(
        //     "Closed \u00B7 Open 17:00 Thu",
        //     style: TextStyle(
        //         color: Colors.black54,
        //         fontSize: 18.0,
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
      ],
    );
  }

  Widget _buildGoogleMap(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(target: LatLng(16.7926673, 96.1389018), zoom: 16),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: {
          ygn1Marker,ygn2Marker,ygn3Marker,developerMarker,myitTarNyuntMarker,blueMarker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 25,tilt: 50.0,
      bearing: 45.0,)));
  }
}

//for Marked in Goolgle Map 
Marker developerMarker = Marker(
  markerId: MarkerId('developer'),
  position: LatLng(16.9284, 96.2346),
  infoWindow: InfoWindow(title: 'East Dagon'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker myitTarNyuntMarker = Marker(
  markerId: MarkerId('myittarnyunt'),
  position: LatLng(16.8102, 96.1765),
  infoWindow: InfoWindow(title: 'BEPS-22 Tarmwe Library'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker blueMarker = Marker(
  markerId: MarkerId('bluehill'),
  position: LatLng(16.8293115,96.1549398), // s e do na
  infoWindow: InfoWindow(title: 'Sedona Hotel'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker ygn1Marker = Marker(
  markerId: MarkerId('ygn1Marker'),
  position: LatLng(17.132582, 96.141762),
  infoWindow: InfoWindow(title: 'MHT Institute'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker ygn2Marker = Marker(
  markerId: MarkerId('ygn2Marker'),
  position: LatLng(16.8293115,96.1549398),
  infoWindow: InfoWindow(title: 'Sedona 2'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);

Marker ygn3Marker = Marker(
  markerId: MarkerId('ygn3Marker'),
  position: LatLng(16.8092588,96.1593468),
  infoWindow: InfoWindow(title: 'Tarmwe Township'),
  icon: BitmapDescriptor.defaultMarkerWithHue(
    BitmapDescriptor.hueViolet,
  ),
);