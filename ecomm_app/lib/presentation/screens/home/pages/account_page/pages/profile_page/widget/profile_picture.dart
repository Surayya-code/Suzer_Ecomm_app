
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../global/sized_box/sized_box.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  
  // late PickedFile imageFile;
  // final ImagePicker _picker = ImagePicker();
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
                  onPressed: (){
                    showModalBottomSheet(
                      context: context, 
                      builder: (builder)=>bottomSheet());
                  },
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


Widget  bottomSheet(){
  return Container(
    height: 100,
    width: 200,
    margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    child: Column(
      children:  [
     const Text('Choose profile photo',
      style: TextStyle(fontSize: 20),),
      AppSizedBox.sizedBox16h,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
         TextButton.icon(
         onPressed: (){},
         icon: const Icon(Icons.camera),
         label: const Text('Camera'), 
         ),
         TextButton.icon(
         onPressed: (){},
         icon: const Icon(Icons.image),
         label: const Text('Gallery'), 
         ),
      ],),
    ],
    ),
  );

 
} 
// void takePhoto(ImageSource source) async {
//   final pickedFile = await _picker.getImage(
//     source:source,
//   );
// }

