import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:html/dom.dart' as dom;
import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/library.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/animationIndicator/loader.dart';
import 'package:save_the_library/widgets/no_connection_handler.dart';

class LibraryDetailPage extends StatelessWidget {
  final int libraryId;
  final String libraryImage;
  final String libraryName;
  final String libraryDescription;
  final String libraryLatitute;
  final String libraryLongitude;
  final String libraryvillageTractName;

  const LibraryDetailPage(
      {Key key,
      @required this.libraryId,
      this.libraryvillageTractName,
      this.libraryLatitute,
      this.libraryLongitude,
      this.libraryImage,
      this.libraryName,
      this.libraryDescription})
      : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Library Detail",
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
      ),
      body: NoConnectionHandler(
        child: FutureBuilder<Response<BuiltLibraryDetail>>(
          future: Provider.of<ApiService>(context).getLibraryDetail(libraryId),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: <Widget>[
                  Container(
                    child: Image.network(
                      'https://savethelibrarymyanmar.org/images/${snapshot.data.body.image}',
                      fit: BoxFit.cover,
                      width: 1000.0,
                      height: 200.0,
                    ),
                  ),
                  // Text Title under Image network
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "${snapshot.data.body.name}",
                      style:
                          TextStyle(fontFamily: 'Pyidaungsu', fontSize: 17.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, left: 10.0, bottom: 10.0),
                        child: Text(
                          "Save the Library",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10.0, right: 10.0, bottom: 10.0),
                        child: Text(
                          "7 December, 2019",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        Html(
                          padding: EdgeInsets.all(10.0),
                          data: "${snapshot.data.body.description}",
                          customTextAlign: (dom.Node node) {
                            if (node is dom.Element) {
                              switch (node.localName) {
                                case "p":
                                  return TextAlign.justify;
                              }
                            }
                            return null;
                          },
                          customTextStyle:
                              (dom.Node node, TextStyle baseStyle) {
                            if (node is dom.Element) {
                              switch (node.localName) {
                                case "p":
                                  return baseStyle.merge(
                                      TextStyle(fontFamily: 'Pyidaungsu'));
                              }
                            }
                            return baseStyle;
                          },
                        ),
                      ],
                    ),
                  ),
                  // Need To put Map Widget function
                  // Commented by Ar Kar Kyaw
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                      child: Stack(
                        children: <Widget>[
                          _buildGoogleMap(context),
                          _zoominusfunction(),
                          _zoomplusfunction(),
                          _buildContainer(),
                        ],
                      ),
                    ),
                  )
                ],
              );
            } else {
              return Center(
                child: LoaderTwo(), //Loader of the pages animation func here
              );
            }
          },
        ),
      ),
    );
  }
}

double zoomVal = 5.0;

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
    var _controller;
        final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(16.9101878, 96.0118898), zoom: zoomVal)));
  }
  Future<void> _plus(double zoomVal) async {
    var _controller;
        final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(16.9101878, 96.0118898), zoom: zoomVal)));
  }
  // Tamwe Library Card list here
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
                  "https://savethelibrarymyanmar.org/media/1474/conversions/feature_image.jpg",
                  16.8102, 96.1765, "BEPS-22 Tarmwe Library"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/83/conversions/feature_image.jpg",
                  16.8102, 96.1765, "Kyauk Myaung Yap Sar Phat A Thin"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/1178/conversions/feature_image.jpg",
                  16.8102, 96.1765, "School Libraries"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/2310/conversions/feature_image.jpg",
                  16.8102, 96.1765, "Sar Nar Yat Woon"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/676/conversions/feature_image.jpg",
                  16.8102, 96.1765, "Sar Pay Law Ka News"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/173/conversions/feature_image.jpg",
                  16.47000000, 96.10000000, "BaGyii Home Movement Library"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/1203/conversions/feature_image.jpg",
                  16.8102, 96.1765, "Myit Tar Nyunt Library"),
            ),
            SizedBox(width: 10.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _boxes(
                  "https://savethelibrarymyanmar.org/media/418/conversions/feature_image.jpg",
                  16.8102, 96.1765, "Arr Man Thit Library"),
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
                    padding: const EdgeInsets.all(9.0),
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
                    color: Colors.lightBlue,
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
                        color: Colors.red,
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
        initialCameraPosition: CameraPosition(target: LatLng(16.8091028, 96.1629651), zoom: 16),
        onMapCreated: (GoogleMapController controller) {
          var _controller;
                    _controller.complete(MarkerId);
        },
        markers: {
          ygn1Marker,ygn2Marker,ygn3Marker,developerMarker,myitTarNyuntMarker,blueMarker
        },
      ),
    );
  }

  Future<void> _gotoLocation(double lat,double long) async {
    var _controller;
        final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(lat, long), zoom: 25,tilt: 50.0,
      bearing: 45.0,)));
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