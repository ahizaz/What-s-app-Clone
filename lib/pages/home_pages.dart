import 'package:flutter/material.dart';
import 'package:whats_app_clone/widgets/ChatWidgets.dart';
import 'package:whats_app_clone/widgets/status_widget.dart';

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
      body:Column(
        children: [
          Container(
            color: Color(0xff075E55),
            child: TabBar(
              indicatorWeight: 4,
              isScrollable: true,
              indicatorColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              tabs: [
              Container(
                width: 25,
                child: Tab(
                  icon: Icon(Icons.camera_alt,color: Colors.white,),
                ),
              ),
              Container(
                width: 80,
                child: Tab(
                  child: Row(
                    children: [
                      Text("Chats",style: TextStyle(color: Colors.white),),
                      SizedBox(width: 10,),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text("10",style: TextStyle(
                            color: Color(0xff075E55),
                            fontSize: 14,
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 70,
                child: Tab(child: Text("STATUS",style: TextStyle(color: Colors.white),),),

              ),
                    Container(
                width: 70,
                child: Tab(child: Text("CALLS",style: TextStyle(color: Colors.white),),),

              ),
            ]),
            
          ),
          Flexible(flex: 1,child:TabBarView(children: [
            Container(color: Colors.amber,),
            Chatwidgets(),
           StatusWidget(),
            Container(color: Colors.cyan,)
          ]) 
          )
        ],
      ) ,

    ));
  }
}