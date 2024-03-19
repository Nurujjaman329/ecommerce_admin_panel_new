import 'package:flutter/material.dart';

class UploadBannerScreens extends StatefulWidget {
  const UploadBannerScreens({super.key});

  @override
  State<UploadBannerScreens> createState() => _UploadBannerScreensState();
}

class _UploadBannerScreensState extends State<UploadBannerScreens> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(10.0),
        child: Text(
          'Upload Banner',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
