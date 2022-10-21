import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


class fusedzamasu extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Evil_Deity_Fused.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Evil Deity Fused')),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset(
              'images/Evil_Deity_Fused.png',
// width: 600,
// height: 240,
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
                      String savename = "Evil_Deity_Fused_enemy.png";
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