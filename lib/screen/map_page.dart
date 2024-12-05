import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tooth_spot/constants/color.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {

  late GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _initializeMap();
  }

  void _initializeMap() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      await Geolocator.requestPermission();
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Stack(
          children: [
            ///全体に地図表示
            ///現在の位置情報の表示はできていない
            GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: const CameraPosition(
                target: LatLng(35.30203, 136.79676),
                zoom: 14.0,
              ),
              // 現在位置にアイコン（青い円形のやつ）を置く
              myLocationEnabled: true,
              myLocationButtonEnabled: false,

              //SPOTの位置のマーカ
              markers: {
                const Marker(
                  markerId: MarkerId('SPOT1'),
                  position: LatLng(37.785834, -122.406417),
                ),

                const Marker(
                  markerId: MarkerId('SPOT2'),
                  position: LatLng(37.78860, -122.39725),
                ),

                const Marker(
                  markerId: MarkerId('SPOT3'),
                  position: LatLng(37.79569, -122.39374),
                ),
              },
            ),
            // FlutterMap(
            //   options: const MapOptions(
            //     // 名古屋駅の緯度経度です。
            //     initialCenter: LatLng(35.170915, 136.881537),
            //     initialZoom: 15.0,
            //   ),
            //   children: [
            //     TileLayer(
            //       urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            //     ),
            //     const MarkerLayer(
            //       markers: [
            //         Marker(
            //           width: 30.0,
            //           height: 30.0,
            //           // ピンの位置を設定
            //           point: LatLng(35.30203, 136.79676),
            //           child: Icon(
            //             Icons.location_on,
            //             color: Colors.red,
            //             // ここでピンのサイズを調整
            //             size: 30,
            //           ),
            //           // マップを回転させた時にピンも回転するのが rotate: false,
            //           // マップを回転させた時にピンは常に同じ向きなのが rotate: true,
            //           rotate: true,
            //         ),
            //
            //         Marker(
            //           width: 30.0,
            //           height: 30.0,
            //           // ピンの位置を設定
            //           point: LatLng(35.170915, 136.881537),
            //           child: Icon(
            //             Icons.location_on,
            //             color: Colors.red,
            //             // ここでピンのサイズを調整
            //             size: 30,
            //           ),
            //           // マップを回転させた時にピンも回転するのが rotate: false,
            //           // マップを回転させた時にピンは常に同じ向きなのが rotate: true,
            //           rotate: true,
            //         ),
            //       ],
            //     ),
            //   ],
            // ),

            ///QR読み込みボタン
            Positioned(
              top: screenSize.height*0.9,
              left: screenSize.width*0.2,
              height: screenSize.height*0.06,
              width: screenSize.width*0.6,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
                onPressed: (){
                  ///カメラ起動を実装
                  //Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const LoginPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 2,),

                    Text('QRをスキャン',style: GoogleFonts.mochiyPopOne(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                  ],
                ),
              ),
            ),

            ///検索ボタン
            Positioned(
                top: screenSize.height*0.69,
                right: screenSize.width*0.05,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  heroTag: 'btn1',
                  mini: true,
                  backgroundColor: mainColor,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: (){

                  },
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                )
            ),

            ///ロケーションボタン
            Positioned(
              top: screenSize.height*0.76,
              right: screenSize.width*0.05,
              height: 50,
              width: 50,
              child: FloatingActionButton(
                heroTag: 'btn2',
                mini: true,
                backgroundColor: mainColor,
                elevation: 0,
                highlightElevation: 0,
                onPressed: () async {
                  Position currentPosition = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                  mapController.animateCamera(
                    CameraUpdate.newCameraPosition(
                      CameraPosition(
                        target: LatLng(currentPosition.latitude, currentPosition.longitude),
                        zoom: 14
                      )
                    )
                  );
                },
                child: const Icon(
                  Icons.near_me,
                  color: Colors.white,
                ),
              )
            ),

            ///ヘルプボタン
            Positioned(
                top: screenSize.height*0.83,
                right: screenSize.width*0.05,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  heroTag: 'btn3',
                  mini: true,
                  backgroundColor: mainColor,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: (){

                  },
                  child: const Icon(
                    Icons.help_outline,
                    color: Colors.white,
                  ),
                )
            ),

            ///マイページボタン
            Positioned(
                top: screenSize.height*0.9,
                right: screenSize.width*0.05,
                height: 50,
                width: 50,
                child: FloatingActionButton(
                  heroTag: 'btn4',
                  mini: true,
                  backgroundColor: mainColor,
                  elevation: 0,
                  highlightElevation: 0,
                  onPressed: (){

                  },
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
