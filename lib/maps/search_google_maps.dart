// ignore_for_file: library_private_types_in_public_api, avoid_print

import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

@RoutePage()
class SearchGoogleMaps extends StatelessWidget {
  const SearchGoogleMaps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? mapController;
  TextEditingController searchController = TextEditingController();
  LatLng? searchResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar en el mapa'),
        actions:  <Widget>[
          IconButton(tooltip: 'Guardar' ,onPressed: (){
            
          }, icon: const Icon(Icons.save))

        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'Buscar ubicación...',
              suffixIcon: IconButton(
                onPressed: () {
                  searchLocation();
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: GoogleMap(
              onMapCreated: (controller) {
                setState(() {
                  mapController = controller;
                });
              },
              initialCameraPosition: const CameraPosition(
                target: LatLng(37.7749, -122.4194), // Coordenadas iniciales (San Francisco)
                zoom: 12.0,
              ),
              markers: Set.of((searchResult != null)
                  ? [Marker(markerId: const MarkerId('search'), position: searchResult!)]
                  : []),
            ),
          ),
        ],
      ),
    );
  }

  void searchLocation() async {
    // Utiliza el servicio de geocodificación de Google Maps para obtener la latitud y longitud de la búsqueda
    // Asegúrate de tener una clave de API de Google Maps válida
    // Reemplaza 'TU_API_KEY' con tu propia clave de API
    const apiKey = 'AIzaSyAcT515kXtU8YqX-2PB6Kel0BQkJHmdOP8';
    final query = searchController.text;

    final url =
        'https://maps.googleapis.com/maps/api/geocode/json?address=$query&key=$apiKey';

    // Envía la solicitud HTTP para obtener la información de geocodificación
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final results = data['results'][0]['geometry']['location'];

      final double lat = results['lat'];
      final double lng = results['lng'];

      setState(() {
        searchResult = LatLng(lat, lng);
        mapController?.animateCamera(CameraUpdate.newLatLng(searchResult!));
      });
      print('******************************');
      print('$lat, $lng');
      print('******************************');
    } else {
      // Manejar el error de la solicitud HTTP
      // ignore: avoid_print
      print('Error en la solicitud de geocodificación');
    }
  }
}
