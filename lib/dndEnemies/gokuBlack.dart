import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class gokublack extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Evil_Saiyan.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Evil Saiyan')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/Evil_Saiyan.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              // Text("File URL: $fileurl"),
              const Divider(),
              ElevatedButton(
                //use permission handler to gain access to local storage on device
                onPressed: () async {
                  Map<Permission, PermissionStatus> statuses = await [
                    Permission.storage,
                    //add more permission to request here.
                  ].request();
                  //use path provider to save to specific path in local storage
                  if (statuses[Permission.storage]!.isGranted) {
                    var dir = await DownloadsPathProvider.downloadsDirectory;
                    if (dir != null) {
                      String savename = "evil_saiyan_enemy.png";
                      String savePath = dir.path + "/$savename";
                      print(savePath);
                      //output:  /storage/emulated/0/Download/banner.png
                      try {
                        await Dio().download(fileurl, savePath,
                            onReceiveProgress: (received, total) {
                              if (total != -1) {
                                print((received / total * 100).toStringAsFixed(0) +
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
                child: const Text("Download Enemy Sheet"),
              )
            ],
          ),
        ]));
  }
}