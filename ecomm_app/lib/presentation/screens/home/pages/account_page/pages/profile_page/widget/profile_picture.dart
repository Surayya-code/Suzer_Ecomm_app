import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children:  [
          const CircleAvatar(
            backgroundImage: 
            AssetImage("assets/images/avatar.jpg"),
            ),
             Positioned(
              right:-7,
              bottom: -10,
              child:  SizedBox(
                height: 45,
                width: 45,
                
                child: TextButton(
                  onPressed: (){},
                 // const Icon(Icons.camera)
                  child:  SvgPicture.asset("assets/icons/camera.svg",
                  color: Colors.grey.shade700,
                  ),
                ),
            
              ),
            ),
        ],
      ),
    );
  }
}