import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../dndClasses/gambit.dart';
import '../dndEnemies/gokuBlack.dart';
import '../dndEnemies/gokuBlackssr.dart';
import '../dndEnemies/zamasu.dart';
import '../dndEnemies/zamasuFused.dart';
import '../dndItems/microDragon.dart';
import '../dndItems/pocketCow.dart';
import '../dndNPCs/hornedQuicklingDevil.dart';
import '../dndPremades/Shield_Master.dart';
import '../dndPremades/Sorcerer_Rouge.dart';

// Creating the view more button for Pain
class buttonSectiongw extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/files/Path%20of%20the%20rinnegan.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewGWpdfbutton())),
        ),
        IconButton(
          icon: Icon(
            Icons.download,
          ),
          onPressed: () async {
            Map<Permission, PermissionStatus> statuses = await [
              Permission.storage,
              //add more permission to request here.
            ].request();

            if (statuses[Permission.storage]!.isGranted) {
              var dir = await DownloadsPathProvider.downloadsDirectory;
              if (dir != null) {
                String savename = "Gravity_Wizard_Class.pdf";
                String savePath = dir.path + "/$savename";
                print(savePath);
                //output:  /storage/emulated/0/Download/banner.png

                try {
                  await Dio().download(fileurl, savePath,
                      onReceiveProgress: (received, total) {
                    if (total != -1) {
                      print((received / total * 100).toStringAsFixed(0) + "%");
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
        )
      ])
    ]);
  }
}

//View pdf button for gravity wizard
class viewGWpdfbutton extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gravity Wizard Class (Pain)'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/files/Path%20of%20the%20rinnegan.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

// Creating the view more button for horned devil
class buttonSectionhqd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      IconButton(
        icon: Icon(
          Icons.search,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => hqd()));
        },
      ),
    ]);
  }
}

// Creating the download button for the saiyan
class buttonSectionss extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/files/saiyan_updated.pdf';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => viewSaiyanpdfbutton())),
        ),
        IconButton(
          icon: Icon(
            Icons.download,
          ),
          onPressed: () async {
            Map<Permission, PermissionStatus> statuses = await [
              Permission.storage,
              //add more permission to request here.
            ].request();

            if (statuses[Permission.storage]!.isGranted) {
              var dir = await DownloadsPathProvider.downloadsDirectory;
              if (dir != null) {
                String savename = "Saiyan_Class.pdf";
                String savePath = dir.path + "/$savename";
                print(savePath);
                //output:  /storage/emulated/0/Download/banner.png

                try {
                  await Dio().download(fileurl, savePath,
                      onReceiveProgress: (received, total) {
                    if (total != -1) {
                      print((received / total * 100).toStringAsFixed(0) + "%");
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
        )
      ])
    ]);
  }
}

//View pdf button for saiyan class/race
class viewSaiyanpdfbutton extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saiyan Class/Race'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/files/saiyan_updated.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

// Creating the view more button micro dragon
class buttonSectionmd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      IconButton(
        icon: Icon(
          Icons.search,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => micro()));
        },
      ),
    ]);
  }
}

//View more button pocket cow
class buttonSectionpc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      IconButton(
        icon: Icon(
          Icons.search,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pocketCow()));
        },
      ),
    ]);
  }
}

//View more button gambit class
class buttonSectiong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      IconButton(
        icon: Icon(
          Icons.search,
        ),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => gambit()));
        },
      ),
    ]);
  }
}

//View more button for goku black card
class buttonSectiongokublack extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Evil_Saiyan.png';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => gokublack())),
        ),
        IconButton(
          icon: Icon(
            Icons.download,
          ),
          onPressed: () async {
            Map<Permission, PermissionStatus> statuses = await [
              Permission.storage,
              //add more permission to request here.
            ].request();

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
                          print((received / total * 100).toStringAsFixed(0) + "%");
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
        )
      ])
    ]);
  }
}

//View more button for ssjr
class buttonSectiongokublackssr extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Evil_Saiyan_SSR.png';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => gokublackssr())),
        ),
        IconButton(
          icon: Icon(
            Icons.download,
          ),
          onPressed: () async {
            Map<Permission, PermissionStatus> statuses = await [
              Permission.storage,
              //add more permission to request here.
            ].request();

            if (statuses[Permission.storage]!.isGranted) {
              var dir = await DownloadsPathProvider.downloadsDirectory;
              if (dir != null) {
                String savename = "evil_saiyan_phase2_enemy.png";
                String savePath = dir.path + "/$savename";
                print(savePath);
                //output:  /storage/emulated/0/Download/banner.png

                try {
                  await Dio().download(fileurl, savePath,
                      onReceiveProgress: (received, total) {
                        if (total != -1) {
                          print((received / total * 100).toStringAsFixed(0) + "%");
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
        )
      ])
    ]);
  }
}

//View more button for evil diety aka zamasu
class buttonSectionzamasu extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Evil_Diety.png';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => zamasu())),
        ),
        IconButton(
          icon: Icon(
            Icons.download,
          ),
          onPressed: () async {
            Map<Permission, PermissionStatus> statuses = await [
              Permission.storage,
              //add more permission to request here.
            ].request();

            if (statuses[Permission.storage]!.isGranted) {
              var dir = await DownloadsPathProvider.downloadsDirectory;
              if (dir != null) {
                String savename = "evil_deity__enemy.png";
                String savePath = dir.path + "/$savename";
                print(savePath);
                //output:  /storage/emulated/0/Download/banner.png

                try {
                  await Dio().download(fileurl, savePath,
                      onReceiveProgress: (received, total) {
                        if (total != -1) {
                          print((received / total * 100).toStringAsFixed(0) + "%");
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
        )
      ])
    ]);
  }
}

//View more button for the fused diety
class buttonSectionfusedzamasu extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/images/Evil_Deity_Fused.png';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.search,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => fusedzamasu())),
        ),
        IconButton(
          icon: Icon(
            Icons.download,
          ),
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
                          print((received / total * 100).toStringAsFixed(0) + "%");
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
        )
      ])
    ]);
  }
}

class buttonSectionsr extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/Sorc_Rogue.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewSRpdfbutton())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Sorcerer_Rouge_Multi_lvl17.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                  if (total != -1) {
                    print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewSRpdfbutton extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Rogue Sorc'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/Sorc_Rogue.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

class buttonSectionsm extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/Shield_Master.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewSMpdfbutton())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Shield_Master_lvl17.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                  if (total != -1) {
                    print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewSMpdfbutton extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shield Master'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/Shield_Master.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

class buttonSectionBaja extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/baja.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewBajapdfbutton())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Wizard_lvl11.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewBajapdfbutton extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baja Blast'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/baja.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

class buttonSectionFighterThree extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/Fighter_lvl3.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewpdfbuttonFighterThree())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Fighter_lvl3.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewpdfbuttonFighterThree extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eladrin Fighter L3'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/Fighter_lvl3.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

class buttonSectionRogueFive extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/Rogue_lvl5.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewpdfbuttonRogueFive())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Rogue_lvl5.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewpdfbuttonRogueFive extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiefling Rogue L5'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/Rogue_lvl5.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}

class buttonSectionWarlockFour extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/warlocklvl4.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewpdfbuttonWarlockFour())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Warlock_lvl4.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewpdfbuttonWarlockFour extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orc Warlock L4'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/warlocklvl4.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
class buttonSectionBardFive extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/bardlvl5.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewpdfbuttonBardFive())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Bard_lvl5.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewpdfbuttonBardFive extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Warforged Bard L5'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/bardlvl5.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
class buttonSectionFighterEleven extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/fighterlvl11.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewpdfbuttonFighterEleven ())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "Fighter_lvl11.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewpdfbuttonFighterEleven  extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Goliath Fighter L5'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/fighterlvl11.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
class buttonSectionRangerFour extends StatelessWidget {
  String fileurl =
      'https://github.com/ThePalad1n/dndsite/raw/main/rangerlvl4.pdf';

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      // _buildButtonColumn(color, Icons.home, 'Home'),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        IconButton(
          icon: Icon(
            Icons.picture_as_pdf,
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => viewpdfbuttonRangerFour ())),
        ),
      ]),
      IconButton(
        icon: Icon(
          Icons.download,
        ),
        onPressed: () async {
          Map<Permission, PermissionStatus> statuses = await [
            Permission.storage,
            //add more permission to request here.
          ].request();

          if (statuses[Permission.storage]!.isGranted) {
            var dir = await DownloadsPathProvider.downloadsDirectory;
            if (dir != null) {
              String savename = "ranger_lvl4.pdf";
              String savePath = dir.path + "/$savename";
              print(savePath);
              //output:  /storage/emulated/0/Download/banner.png

              try {
                await Dio().download(fileurl, savePath,
                    onReceiveProgress: (received, total) {
                      if (total != -1) {
                        print((received / total * 100).toStringAsFixed(0) + "%");
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
      )
    ]);
  }
}

class viewpdfbuttonRangerFour extends StatelessWidget {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiefling Ranger L4'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.network(
        'https://github.com/ThePalad1n/dndsite/raw/main/rangerlvl4.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}