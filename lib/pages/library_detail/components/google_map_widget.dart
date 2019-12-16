import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapWidget extends StatefulWidget {
  final int libraryId;
  final double latitude;
  final double longitude;

  GoogleMapWidget(
      {@required this.libraryId,
      @required this.latitude,
      @required this.longitude,
      Key key})
      : super(key: key);

  @override
  _GoogleMapWidgetState createState() => _GoogleMapWidgetState();
}

class _GoogleMapWidgetState extends State<GoogleMapWidget> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final CameraPosition _library = CameraPosition(
        bearing: 192.8334901395799,
        target: LatLng(this.widget.latitude, this.widget.longitude),
        tilt: 59.440717697143555,
        zoom: 19.151926040649414);

    final Marker _marker = Marker(
      markerId: MarkerId("${this.widget.libraryId}"),
      position: LatLng(this.widget.latitude, this.widget.longitude),
      icon: BitmapDescriptor.defaultMarker,
    );

    return SizedBox(
      height: 400.0,
      child: GoogleMap(
        markers: {
          _marker,
        },
        mapType: MapType.normal,
        initialCameraPosition: _library,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        gestureRecognizers:
            // TODO(iskakaushik): Remove this when collection literals makes it to stable.
            // https://github.com/flutter/flutter/issues/28312
            // ignore: prefer_collection_literals
            <Factory<OneSequenceGestureRecognizer>>[
          Factory<OneSequenceGestureRecognizer>(
            () => ScaleGestureRecognizer(),
          ),
        ].toSet(),
      ),
    );

    //TODO: to change in case user want to go to another place from current viewpoint
    Future<void> _goToLibrary() async {
      final GoogleMapController controller = await _controller.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(_library));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
