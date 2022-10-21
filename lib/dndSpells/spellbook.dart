//Spellbook
import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class Spells extends StatelessWidget {
  String planetDevfileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Planetary%20Devastation%20Card.png';
  String universalPullfileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Universal%20Pull%20Card.png';
  String allMightyfileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Almighty%20Push%20Card.png';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Spells', style: TextStyle(color: Colors.white)),
          bottom: PreferredSize(
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.white.withOpacity(0.3),
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child: Text('Cantrip'),
                    ),
                    Tab(
                      child: Text('1st Level'),
                    ),
                    Tab(
                      child: Text('2nd Level'),
                    ),
                    Tab(
                      child: Text('3rd Level'),
                    ),
                    Tab(
                      child: Text('4th Level'),
                    ),
                    Tab(
                      child: Text('5th Level'),
                    ),
                    Tab(
                      child: Text('6th Level'),
                    ),
                    Tab(
                      child: Text('7th Level'),
                    ),
                    Tab(
                      child: Text('8th Level'),
                    ),
                    Tab(
                      child: Text('9th Level'),
                    )
                  ]),
              preferredSize: Size.fromHeight(30.0)),
        ),
        body: TabBarView(children: <Widget>[
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/Universal Pull Card.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  // Text("File URL: $fileurl"),
                  const Divider(),
                  ElevatedButton(
                    onPressed: () async {
                      Map<Permission, PermissionStatus> statuses = await [
                        Permission.storage,
                        //add more permission to request here.
                      ].request();

                      if (statuses[Permission.storage]!.isGranted) {
                        var dir =
                            await DownloadsPathProvider.downloadsDirectory;
                        if (dir != null) {
                          String savename = "universal_pull.png";
                          String savePath = dir.path + "/$savename";
                          print(savePath);
                          //output:  /storage/emulated/0/Download/banner.png

                          try {
                            await Dio().download(universalPullfileurl, savePath,
                                onReceiveProgress: (received, total) {
                              if (total != -1) {
                                print((received / total * 100)
                                        .toStringAsFixed(0) +
                                    "%");
                                //you can build progressbar feature too
                              }
                            });
                            print("File is saved to download folder.");
                          } on DioError catch (e) {
                            print(e.message);
                          }
                        }
                      } else {
                        print("No permission to read and write.");
                      }
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Text("Download Spell"),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  'images/Almighty Push Card.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  // Text("File URL: $fileurl"),
                  const Divider(),
                  ElevatedButton(
                    onPressed: () async {
                      Map<Permission, PermissionStatus> statuses = await [
                        Permission.storage,
                        //add more permission to request here.
                      ].request();

                      if (statuses[Permission.storage]!.isGranted) {
                        var dir =
                            await DownloadsPathProvider.downloadsDirectory;
                        if (dir != null) {
                          String savename = "almighty_push.png";
                          String savePath = dir.path + "/$savename";
                          print(savePath);
                          //output:  /storage/emulated/0/Download/banner.png

                          try {
                            await Dio().download(allMightyfileurl, savePath,
                                onReceiveProgress: (received, total) {
                              if (total != -1) {
                                print((received / total * 100)
                                        .toStringAsFixed(0) +
                                    "%");
                                //you can build progressbar feature too
                              }
                            });
                            print("File is saved to download folder.");
                          } on DioError catch (e) {
                            print(e.message);
                          }
                        }
                      } else {
                        print("No permission to read and write.");
                      }
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    child: const Text("Download Spell"),
                  )
                ],
              ),
            ],
          ),
          Container(
            child: Center(
              child: Text('1st Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('2nd Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('3rd Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('4th Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('5th Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('6th Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('7th Level'),
            ),
          ),
          Container(
            child: Center(
              child: Text('8th Level'),
            ),
          ),
          ListView(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'images/Planetary Devastation Card.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                // Text("File URL: $fileurl"),
                const Divider(),
                ElevatedButton(
                  onPressed: () async {
                    Map<Permission, PermissionStatus> statuses = await [
                      Permission.storage,
                      //add more permission to request here.
                    ].request();

                    if (statuses[Permission.storage]!.isGranted) {
                      var dir = await DownloadsPathProvider.downloadsDirectory;
                      if (dir != null) {
                        String savename = "planetary_devastation.png";
                        String savePath = dir.path + "/$savename";
                        print(savePath);
                        //output:  /storage/emulated/0/Download/banner.png

                        try {
                          await Dio().download(planetDevfileurl, savePath,
                              onReceiveProgress: (received, total) {
                            if (total != -1) {
                              print(
                                  (received / total * 100).toStringAsFixed(0) +
                                      "%");
                              //you can build progressbar feature too
                            }
                          });
                          print("File is saved to download folder.");
                        } on DioError catch (e) {
                          print(e.message);
                        }
                      }
                    } else {
                      print("No permission to read and write.");
                    }
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.grey),
                  child: const Text("Download Spell"),
                )
              ],
            ),
          ]),
        ]),
      ),
    );
  }
}
