
import 'package:clarekelly/app/utils/assets_path.dart';
import 'package:flutter/material.dart';

class MultiplePhotosAveture extends StatelessWidget {
  const MultiplePhotosAveture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          
          radius: 30,
          backgroundColor: Colors.transparent,
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: CircleAvatar(
            backgroundImage: AssetImage(AssetsPath.imagefootballKid),
            radius: 18,
            backgroundColor: Colors.black,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: CircleAvatar(
            backgroundImage: AssetImage(AssetsPath.imagefootballKid),
    
            radius: 18,
            backgroundColor: const Color.fromARGB(255, 16, 139, 76),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: CircleAvatar(
            backgroundImage: AssetImage(AssetsPath.imagefootballKid),
            radius: 18,
            backgroundColor: const Color.fromARGB(255, 108, 61, 203),
          ),
        ),
       
        
      ],
    );
  }
}
