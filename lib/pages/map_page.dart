import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:project_decolar/models/aeroporto.dart';

class MapPage extends StatefulWidget {
  final Aeroporto aeroporto;

  const MapPage({Key? key, required this.aeroporto}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  //Para trabalhar com um mapa é preciso ter um controlador do mapa
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    double lat =  widget.aeroporto.latitude;
    double long = widget.aeroporto.longitude;
    return GoogleMap(
        initialCameraPosition: CameraPosition(
      target: LatLng(lat, long),
      zoom: 14.0,
    ));
  }
}
