import 'package:flutter/material.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
    
     child:Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(70), child: AppBar(

       elevation: 0,
       title: Padding(padding: EdgeInsets.only(top: 10),
       child: Text("WhatsApp",style: TextStyle(fontSize: 21,color: Colors.white),),
       ), 
       actions: [
        Padding(padding: EdgeInsets.only(top: 10,right: 15),
        child: Icon(Icons.search,size: 28,color: Colors.white,),
        ),
       PopupMenuButton(  color: Colors.white,padding: EdgeInsets.symmetric(vertical: 20),itemBuilder: (context)=>[
        PopupMenuItem(value: 1,child: Text("New Group",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),
         PopupMenuItem(value: 2,child: Text("New BoradCast",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),
        PopupMenuItem(value: 3,child: Text("Linked Devoce",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),
         PopupMenuItem(value: 4,child: Text("Started Message",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),
          PopupMenuItem(value: 5,child: Text("Seetings",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),),


       ]),
       ],
      ),
      
      ),
    ));
  }
}