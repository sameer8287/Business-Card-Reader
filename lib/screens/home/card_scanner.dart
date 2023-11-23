import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
// import 'package:image_to_text_flutter/start2.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'result_screen.dart';
import 'package:path/path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with WidgetsBindingObserver {
  bool _isPermissionGranted = false;

  late final Future<void> _future;
  CameraController? _cameraController;

  final textRecognizer = TextRecognizer();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    _future = _requestCameraPermission();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _stopCamera();
    textRecognizer.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    late Future<void> _initializeControllerFuture;
    if (_cameraController == null || !_cameraController!.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      _stopCamera();
    } else if (state == AppLifecycleState.resumed &&
        _cameraController != null &&
        _cameraController!.value.isInitialized) {
      _startCamera();
    }
  }

  Future captureImage({required BuildContext context}) async {
    CameraController _cameraController;
    late List<CameraDescription> cameras;

    try {
      cameras = await availableCameras();
      _cameraController = CameraController(
        cameras[
            0], // Use the first camera (you might need to adjust this based on your device)
        ResolutionPreset.high,
      );

      await _cameraController.initialize();

      final Directory appDir = await getApplicationDocumentsDirectory();
      final String path = join(
        appDir.path,
        '${DateTime.now().millisecondsSinceEpoch}.png',
      );

      // Navigator.of(context).pushReplacement(MaterialPageRoute(
      //   builder: (context) {
      //     return Start2(id: path);
      //   },
      // ));

      await _cameraController.takePicture();

      return path;
    } catch (e) {
      print("Error capturing image: $e");
      return "";
    }
    // finally {
    //   await _cameraController.dispose();
    // }
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      body: Stack(
        children: [
          FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
              return Stack(
                children: [
                  if (_isPermissionGranted)
                    FutureBuilder<List<CameraDescription>>(
                      future: availableCameras(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          _initCameraController(snapshot.data!);

                          return Center(
                              child: CameraPreview(_cameraController!));
                        } else {
                          return const LinearProgressIndicator();
                        }
                      },
                    ),
                  // ClipRect(
                  //   child: BackdropFilter(
                  //     filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  //     child: Container(
                  //       // color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
                  //       child: Center(
                  //         child: Container(
                  //           width: 250.0, // Adjust the width as needed
                  //           height: 400.0, // Adjust the height as needed
                  //           decoration: BoxDecoration(
                  //             color: Colors.transparent,
                  //             border:
                  //                 Border.all(color: Colors.white, width: 2.0),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 0,
                      sigmaY: 0,
                    ),
                    child: Container(
                      // color: Colors.black
                      //     .withOpacity(0.5), // Adjust the opacity as needed
                      child: Center(
                        child: Container(
                          width: 250.0, // Adjust the width as needed
                          height: 400.0, // Adjust the height as needed
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Container(
                  //     height: double.infinity,
                  //     width: double.infinity,
                  //     decoration: BoxDecoration(
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black.withOpacity(0.5),
                  //           spreadRadius: 2,
                  //           blurRadius: 5,
                  //           offset: Offset(0, 2),
                  //         ),
                  //       ],
                  //     ),

                  //   ),
                  // ),

                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Container(
                  //     margin: EdgeInsets.symmetric(horizontal: 20.0),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10.0),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black.withOpacity(0.5),
                  //           spreadRadius: 2,
                  //           blurRadius: 5,
                  //           offset: Offset(0, 2),
                  //         ),
                  //       ],
                  //       border: Border.all(color: Colors.white, width: 2.0),
                  //     ),
                  //     child: AspectRatio(
                  //       aspectRatio:
                  //           0.625, // Adjust the aspect ratio to match your visiting card size
                  //     ),
                  //   ),
                  // ),
                ],
              );
            },
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.white,
        // shape: ,
        onPressed: () {},
        child: Icon(
          Icons.camera,
          color: Colors.black,
        ),
      ),
    );
  }

  Future<void> _requestCameraPermission() async {
    final status = await Permission.camera.request();
    _isPermissionGranted = status == PermissionStatus.granted;
  }

  void _startCamera() {
    if (_cameraController != null) {
      _cameraSelected(_cameraController!.description);
    }
  }

  void _stopCamera() {
    if (_cameraController != null) {
      _cameraController?.dispose();
    }
  }

  void _initCameraController(List<CameraDescription> cameras) {
    if (_cameraController != null) {
      return;
    }

    // Select the first rear camera.
    CameraDescription? camera;
    for (var i = 0; i < cameras.length; i++) {
      final CameraDescription current = cameras[i];
      if (current.lensDirection == CameraLensDirection.back) {
        camera = current;
        break;
      }
    }

    if (camera != null) {
      _cameraSelected(camera);
    }
  }

  Future<void> _cameraSelected(CameraDescription camera) async {
    _cameraController = CameraController(
      camera,
      ResolutionPreset.max,
      enableAudio: false,
    );

    await _cameraController!.initialize();
    await _cameraController!.setFlashMode(FlashMode.off);

    if (!mounted) {
      return;
    }
    setState(() {});
  }

  // Future<void> _scanImage() async {
  //   setState(() {
  //     isLoading = true;
  //   });
  //   if (_cameraController == null) return;

  //   final navigator = Navigator.of(context);

  //   try {
  //     final pictureFile = await _cameraController!.takePicture();

  //     final file = File(pictureFile.path);

  //     final inputImage = InputImage.fromFile(file);
  //     final recognizedText = await textRecognizer.processImage(inputImage);

  //     await navigator.push(
  //       MaterialPageRoute(
  //         builder: (BuildContext context) =>
  //             ResultScreen(text: recognizedText.text),
  //       ),
  //     );
  //     setState(() {
  //       isLoading = false;
  //     });
  //   } catch (e) {
  //     setState(() {
  //       isLoading = false;
  //     });
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text('An error occurred when scanning text'),
  //       ),
  //     );
  //   }
  // }
}
