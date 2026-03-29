import 'package:flutter/material.dart';
import 'package:whats_app_clone/core/utils/constants/image_path.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey,width: 3)
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    
                    child:Image.asset(ImagePath.statusPic,height: 55,width: 55,fit: BoxFit.cover,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      ),
    );
  }
}